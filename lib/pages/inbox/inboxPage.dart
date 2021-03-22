import 'package:flutter/material.dart';
import 'package:tikTokClone/theme/colors.dart';

class InboxPage extends StatefulWidget {
  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 20,
                ),
                Row(
                  children: [
                    Text(
                      "All activity",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Icon(Icons.send)
              ],
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message,
                size: 80,
                color: Colors.black45,
              )
            ],
          ),
          SizedBox(height: 25),
          Text(
            "Recent Activities",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 3),
          Text(
            "Notifications",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
          ),
        ]),
      ),
    );
  }
}
