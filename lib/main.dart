import 'package:flutter/material.dart';
import 'package:proj1/bitt.dart';
import 'package:proj1/tittok_video_slider.dart';
// import 'package:proj1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: TikTokVideoSlider(),
    );
  }
}

