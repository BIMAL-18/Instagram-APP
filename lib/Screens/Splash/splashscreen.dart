import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_app/Screens/Login/loginscreen.dart';
import 'package:instagram_app/Widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "instagram.png"),
            UiHelper.CustomImage(imgurl: "logo.png"),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
