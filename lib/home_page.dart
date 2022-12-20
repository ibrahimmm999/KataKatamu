import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tts_stt_app/stt_page.dart';
import 'package:tts_stt_app/theme/theme.dart';
import 'package:tts_stt_app/tts_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PanelController _panelController = PanelController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void togglePanel() => _panelController.isPanelOpen
      ? _panelController.close()
      : _panelController.open();
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 100),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: togglePanel,
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo.png"),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      );
    }

    Widget sttButton() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: kDarkBlueColor),
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SttPage()));
            },
            child: Text(
              'Speech to Text',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
      );
    }

    Widget ttsButton() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: kDarkBlueColor),
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
      body: SlidingUpPanel(
        parallaxEnabled: true,
        controller: _panelController,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        color: kDarkBlueColor,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
        minHeight: MediaQuery.of(context).size.height * 0.105,
        panelBuilder: (controller) {
          return SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                GestureDetector(
                  onTap: togglePanel,
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 6,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 51),
                  child: Text(
                    "About Us",
                    style: whiteTextStyle.copyWith(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: Text(
                    '"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"',
                    style: whiteTextStyle,
                  ),
                )
              ],
            ),
          );
        },
        body: ListView(
          children: [header(), sttButton(), ttsButton()],
        ),
      ),
    );
  }
}
