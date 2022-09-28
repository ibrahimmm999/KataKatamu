import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget logOutButton() {
      return GestureDetector(
          child: Container(
        child: Text(
          'Log Out',
          style: TextStyle(fontSize: 18),
        ),
      ));
    }

    return Scaffold(
      body: ListView(
        children: [],
      ),
    );
  }
}
