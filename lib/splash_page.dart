import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tts_stt_app/home_page.dart';
import 'package:tts_stt_app/theme/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlueColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo_light.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Aplikasi Pembantu Komunikasi\nTunawicara dan Tunarungu",
              style: whiteTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
