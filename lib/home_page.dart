import 'package:flutter/material.dart';
import 'package:tts_stt_app/stt_page.dart';
import 'package:tts_stt_app/tts_page.dart';

import 'settings_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 100),
        child: Row(
          children: [
            Text(
              'Aplikasi Pembantu\nTuna Rungu dan Tuna Wicara',
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            GestureDetector(
              child: Container(
                child: Icon(Icons.settings),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            )
          ],
        ),
      );
    }

    Widget sttButton() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SttPage()));
            },
            child: Text(
              'Speect to Text',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
      );
    }

    Widget ttsButton() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TtsPage()));
            },
            child: Text(
              'Text to Speech',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
      );
    }

    return Scaffold(
      body: ListView(
        children: [header(), sttButton(), ttsButton()],
      ),
    );
  }
}
