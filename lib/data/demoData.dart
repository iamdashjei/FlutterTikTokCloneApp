import 'package:tikTokClone/models/videoModel.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

List videoData = [
  VideoModel(
      id: uuid.v1(),
      videoUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-apps-4e226.appspot.com/o/videos%2Fvideo_1.mp4?alt=media&token=daa13cf8-87a4-4479-9dda-1e2dd862647d",
      name: "Vannak Niza🦋",
      caption: "Morning, everyone!!",
      songName: "original sound - Łÿ Pîkâ Ćhûû",
      profileImg:
          "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      likes: "1.5M",
      comments: "18.9K",
      shares: "80K",
      albumImg:
          "https://images.unsplash.com/photo-1502982899975-893c9cf39028?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
        "https://firebasestorage.googleapis.com/v0/b/flutter-apps-4e226.appspot.com/o/videos%2Fvideo_2.mp4?alt=media&token=be14a16d-10db-4083-86bb-c0ef908879e6",
    name: "Dara Chamroeun",
    caption: "Oops 🙊 #fyp #cambodiatiktok",
    songName: "original sound - 💛💛Khantana 🌟",
    profileImg:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/ba13e655825553a46b1913705e3a8617.jpeg",
    likes: "4.4K",
    comments: "5.2K",
    shares: "100",
    albumImg:
        "https://images.unsplash.com/photo-1462804512123-465343c607ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  ),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
        "https://firebasestorage.googleapis.com/v0/b/flutter-apps-4e226.appspot.com/o/videos%2Fvideo_3.mp4?alt=media&token=04e7bac1-6b01-4367-aebe-35ea43cebfbc",
    name: "9999womenfashion",
    caption: "#블루모드",
    songName: "original sound - 🖤Khün MÄk🇰🇭",
    profileImg:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1664576339652610.jpeg",
    likes: "100K",
    comments: "10K",
    shares: "8.5K",
    albumImg:
        "https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  ),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
        "https://firebasestorage.googleapis.com/v0/b/flutter-apps-4e226.appspot.com/o/videos%2Fvideo_4.mp4?alt=media&token=29e1bfe7-f327-4656-ae01-e1ad2b722e92",
    name: "@sunilghige",
    caption: "चल, भटक ले ना बावरे....🌄🏞️✌️",
    songName: "original sound - Kyon | Barfi",
    profileImg:
        "https://instagram.fpnq2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p640x640/122142921_346700159767744_5153237613819551521_n.jpg?_nc_ht=instagram.fpnq2-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=2fQux6mAq14AX_oHd0j&tp=1&oh=f99bdbf47f1a85ea85b49252a3d7203e&oe=600C73A0",
    likes: "80M",
    comments: "100K",
    shares: "20K",
    albumImg:
        "https://www.chordzone.org/wp-content/uploads/2020/03/300x300bb-288-300x300.jpg",
  ), // start of extended
  VideoModel(
    id: uuid.v1(),
    videoUrl:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/4.mp4?alt=media&token=517ad60c-ca28-400e-ab46-49fb8c122d75",
    name: "Song Title 1 - Artist 1",
    caption: "Video 1",
    songName: "Song Title 1 - Artist 1",
    profileImg:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/profile_pics%2Fprofile1.jpg?alt=media&token=567ea332-04e8-4c64-afb0-8152c6f12fec",
    likes: "3.2k",
    comments: "21",
    shares: "20K",
    albumImg:
    "https://www.chordzone.org/wp-content/uploads/2020/03/300x300bb-288-300x300.jpg",
  ),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/1.mp4?alt=media&token=36032747-7815-473d-beef-061098f08c18",
    name: "Video 2",
    caption: "Video 2",
    songName: "Song Title 2 - Artist 2",
    profileImg:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/profile_pics%2Fprofile2.jpeg?alt=media&token=b1fdd00d-5d6e-4705-980d-4ef3e70ff6c5",
    likes: "35k",
    comments: "11",
    shares: "20K",
    albumImg:
    "https://www.chordzone.org/wp-content/uploads/2020/03/300x300bb-288-300x300.jpg",
  ),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/3.mp4?alt=media&token=a7ccda22-7264-4c64-9328-86a4c2ec31cd",
    name: "Song Title 3 - Artist 3",
    caption: "Video 3",
    songName: "Song Title 3 - Artist 3",
    profileImg:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/profile_pics%2Fprofile3.jpg?alt=media&token=d65b2ed7-4164-4149-a5c7-8620201e8411",
    likes: "10K",
    comments: "10K",
    shares: "10K",
    albumImg:
    "https://www.chordzone.org/wp-content/uploads/2020/03/300x300bb-288-300x300.jpg",
  ),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/2.mp4?alt=media&token=b6218221-6699-402b-8b89-7e3354ac32dc",
    name: "Song Title 4 - Artist 4",
    caption: "Video 4",
    songName: "Song Title 4 - Artist 4",
    profileImg:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/profile_pics%2Fprofile4.jpg?alt=media&token=399ca1f4-2017-4f48-af21-0aa6a7b17550",
    likes: "20M",
    comments: "10K",
    shares: "10K",
    albumImg:
    "https://www.chordzone.org/wp-content/uploads/2020/03/300x300bb-288-300x300.jpg",
  ),
  VideoModel(
    id: uuid.v1(),
    videoUrl:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/5.mp4?alt=media&token=965a0494-7aaf-4248-85c5-fefac581ee7f",
    name: "Song Title 5 - Artist 5",
    caption: "Video 5",
    songName: "Song Title 5 - Artist 5",
    profileImg:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/profile_pics%2Fprofile5.jpeg?alt=media&token=7fbe5118-c2e9-4550-a468-3eb8a4d34d6a",
    likes: "21.4k",
    comments: "434",
    shares: "20K",
    albumImg:
    "https://www.chordzone.org/wp-content/uploads/2020/03/300x300bb-288-300x300.jpg",
  ),


  VideoModel(
    id: uuid.v1(),
    videoUrl:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/7.mp4?alt=media&token=2f6a3c9b-bfc4-483e-ad5b-bb7d539ee765",
    name: "Song Title 6 - Artist 6",
    caption: "Video 6",
    songName: "Song Title 6 - Artist 6",
    profileImg:
    "https://firebasestorage.googleapis.com/v0/b/testvideo-91d3a.appspot.com/o/profile_pics%2Fprofile5.jpeg?alt=media&token=7fbe5118-c2e9-4550-a468-3eb8a4d34d6a",
    likes: "80M",
    comments: "54",
    shares: "20K",
    albumImg:
    "https://www.chordzone.org/wp-content/uploads/2020/03/300x300bb-288-300x300.jpg",
  )
];
