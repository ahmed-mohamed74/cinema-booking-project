import 'dart:async';

import 'package:flutter/material.dart';

import 'Onboarding Screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();

}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => OnboardingScreen()
    )
    );
  }

  initScreen(BuildContext context) {
    const main = Color(0xFF1D1D27);

    return  Scaffold(
      backgroundColor: main,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 300,),
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assets/appLogos/logob.png"),
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),

            const Padding(padding: EdgeInsets.only(top: 35.0)),
            const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
              color: Color(0xFFf69954),

            ),
            const SizedBox(height: 70,),
            SizedBox(
              height: 140,
              width: 170,
              child: Image.asset("assets/appLogos/logow.png"),
            ),
          ],
        ),
      ),
    );
  }
}