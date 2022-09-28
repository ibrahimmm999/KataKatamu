import 'package:flutter/material.dart';
import 'package:tts_stt_app/home_page.dart';
import 'package:tts_stt_app/splash_page.dart';
import 'package:tts_stt_app/stt_page.dart';
import 'package:tts_stt_app/theme/theme.dart';
import 'package:tts_stt_app/tts_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}
