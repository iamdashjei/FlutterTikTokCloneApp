import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikTokClone/pages/root/rootApp.dart';
import 'package:tikTokClone/provider/videoProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().whenComplete(
    () => print(
      "Established",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VideoProvider(),
      child: MaterialApp(
        title: 'TikTok App',
        debugShowCheckedModeBanner: false,
        home: RootApp(),
      ),
    );
  }
}
