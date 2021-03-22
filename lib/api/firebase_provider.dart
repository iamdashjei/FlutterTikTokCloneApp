import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/videoModel.dart';

class FirebaseProvider {
  static saveVideo(VideoModel video) async {
    var options = SetOptions(merge: true);
    // await Firestore.instance.collection('videoData').doc().set({
    //   'id': video.id,
    //   'name': video.name,
    //   'videoUrl': video.videoUrl,
    //   'caption': video.caption,
    //   'songName': video.songName,
    //   'profileImg': video.profileImg,
    //   'likes': video.likes,
    //   'comments': video.comments,
    //   'shares': video.shares,
    //   'albumImg': video.albumImg,
    // });
    await Firestore.instance
        .collection('videoData')
        .doc(video.id)
        .set(video.toJSON(), options);
  }

}