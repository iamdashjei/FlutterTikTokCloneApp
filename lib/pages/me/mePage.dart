import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tikTokClone/theme/colors.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person_add_alt_1_outlined),
                  Text(
                    "Jovito Pangan",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                          "https://avatars.githubusercontent.com/u/17049753?s=460&amp;u=aa7c373a93e16dd72bd4244f42182fbe8a1e43cd&amp;v=4",
                          height: 100.0,
                          width: 100.0,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "@iamdashjei",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "1.5K",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black54,
                        width: 1,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Column(
                        children: [
                          Text(
                            "2.2K",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black54,
                        width: 1,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Column(
                        children: [
                          Text(
                            "1.1K",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Likes",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 140,
                        height: 47,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 45,
                        height: 47,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(child: Icon(Icons.bookmark)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.menu),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.black,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/pOEbLRT4SwD35IELiQ/giphy.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/U4FkC2VqpeNRHjTDQ5/giphy.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/B1xUp52rUnrv1Leakw/giphy.gif", //
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/EXDDKdNIxp3a/giphy.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/26xBHODooqSCk0Ndm/giphy.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/3o7WTEeXlRVhQSjKlG/giphy.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
