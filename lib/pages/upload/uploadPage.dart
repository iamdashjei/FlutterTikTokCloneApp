import 'dart:io';
import 'dart:math';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:tikTokClone/api/encoding_provider.dart';
import 'package:tikTokClone/api/firebase_provider.dart';
import 'package:tikTokClone/data/demoData.dart';
import 'package:tikTokClone/provider/videoProvider.dart';
import 'package:tikTokClone/theme/colors.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';


import '../../models/videoModel.dart';

var uuid = Uuid();

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final thumbWidth = 100;
  final thumbHeight = 150;
  List<VideoModel> _videos = <VideoModel>[];
  bool _imagePickerActive = false;
  bool _processing = false;
  bool _canceled = false;
  double _progress = 0.0;
  int _videoDuration = 0;
  String _processPhase = '';
  final bool _debugMode = false;

  @override
  void initState() {
    EncodingProvider.enableStatisticsCallback((int time,
        int size,
        double bitrate,
        double speed,
        int videoFrameNumber,
        double videoQuality,
        double videoFps) {
      if (_canceled) return;

      setState(() {
        _progress = time / _videoDuration;
      });
    });
    super.initState();

  }

  void _onUploadVideoProgress(event) {
    if (event.type == StorageTaskEventType.progress) {
      final double progress =
          event.snapshot.bytesTransferred / event.snapshot.totalByteCount;
      setState(() {
        _progress = progress;
      });
    }
  }

  Future<String> _uploadVideoFile(filePath, folderName) async {
    final file = new File(filePath);
    final basename = p.basename(filePath);

    final StorageReference ref =
    FirebaseStorage.instance.ref().child(folderName).child(basename);
    StorageUploadTask uploadTask = ref.putFile(file);
    uploadTask.events.listen(_onUploadVideoProgress);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    String videoUrl = await taskSnapshot.ref.getDownloadURL();
    return videoUrl;
  }

  String getVideoFileExtension(String fileName) {
    final exploded = fileName.split('.');
    return exploded[exploded.length - 1];
  }

  void _updateVideolistUrls(File file, String videoName) {
    final lines = file.readAsLinesSync();
    var updatedLines = List<String>();

    for (final String line in lines) {
      var updatedLine = line;
      if (line.contains('.ts') || line.contains('.m3u8')) {
        updatedLine = '$videoName%2F$line?alt=media';
      }
      updatedLines.add(updatedLine);
    }
    final updatedContents =
    updatedLines.reduce((value, element) => value + '\n' + element);

    file.writeAsStringSync(updatedContents);
  }

  Future<String> _uploadVideoHLSFiles(dirPath, videoName) async {
    final videosDir = Directory(dirPath);

    var playlistUrl = '';

    final files = videosDir.listSync();
    int i = 1;
    for (FileSystemEntity file in files) {
      final fileName = p.basename(file.path);
      final fileExtension = getVideoFileExtension(fileName);
      if (fileExtension == 'm3u8') _updateVideolistUrls(file, videoName);

      setState(() {
        _processPhase = 'Uploading video file $i out of ${files.length}';
        _progress = 0.0;
      });

      final downloadUrl = await _uploadVideoFile(file.path, videoName);

      if (fileName == 'master.m3u8') {
        playlistUrl = downloadUrl;
      }
      i++;
    }

    return playlistUrl;
  }

  Future<void> _processVideoFile(File rawVideoFile) async {
    final String rand = '${new Random().nextInt(10000)}';
    final videoName = 'video$rand';
    final Directory extDir = await getApplicationDocumentsDirectory();
    final outDirPath = '${extDir.path}/Videos/$videoName';
    final videosDir = new Directory(outDirPath);
    videosDir.createSync(recursive: true);

    final rawVideoPath = rawVideoFile.path;
    final info = await EncodingProvider.getMediaInformation(rawVideoPath);
    final aspectRatio = EncodingProvider.getAspectRatio(info);

    setState(() {
      _processPhase = 'Generating thumbnail';
      _videoDuration = EncodingProvider.getDuration(info);
      _progress = 0.0;
    });

    final thumbFilePath =
    await EncodingProvider.getThumb(rawVideoPath, thumbWidth, thumbHeight);

    setState(() {
      _processPhase = 'Encoding video';
      _progress = 0.0;
    });

    final encodedFilesDir =
    await EncodingProvider.encodeHLS(rawVideoPath, outDirPath);

    setState(() {
      _processPhase = 'Uploading thumbnail to firebase storage';
      _progress = 0.0;
    });
    final thumbUrl = await _uploadVideoFile(thumbFilePath, 'thumbnail');
    final videoUrl = await _uploadVideoHLSFiles(encodedFilesDir, videoName);

    final videoInfo = VideoModel(
        id: uuid.v1(),
        name: videoName,
        videoUrl: videoUrl,
        caption: "Test " + videoName,
        songName: videoName,
        profileImg: thumbUrl,
        likes: '2.0K',
        comments: '2.0K',
        shares: '2.0K',
        albumImg: thumbUrl,
    );

    setState(() {
      _processPhase = 'Saving video metadata to cloud firestore';
      _progress = 0.0;
    });

    await FirebaseProvider.saveVideo(videoInfo);

    setState(() {
      _processPhase = '';
      _progress = 0.0;
      _processing = false;
    });
  }

  void _takeOwnVideo() async {
    var videoFile;
    if (_debugMode) {
      videoFile = File(
          '/storage/emulated/0/Android/data/com.learningsomethingnew.fluttervideo.flutter_video_sharing/files/Pictures/ebbafabc-dcbe-433b-93dd-80e7777ee4704451355941378265171.mp4');
    } else {
      if (_imagePickerActive) return;

      _imagePickerActive = true;
      videoFile = await ImagePicker.pickVideo(source: ImageSource.camera);
      _imagePickerActive = false;

      if (videoFile == null) return;
    }
    setState(() {
      _processing = true;
    });

    try {
      await _processVideoFile(videoFile);
    } catch (e) {
      print('${e.toString()}');
    } finally {
      setState(() {
        _processing = false;
      });
    }
  }

  _getProgressBar() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
            child: Text(_processPhase),
          ),
          LinearProgressIndicator(
            value: _progress,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Video"),
      ),
      body: Center(child: _processing ? _getProgressBar() : Container()),
      floatingActionButton: FloatingActionButton(
          child: _processing
              ? CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
          )
              : Icon(Icons.add),
          onPressed: _takeOwnVideo),
    );
  }
}
