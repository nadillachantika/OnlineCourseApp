import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_courseapp/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboarding())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff0096C7),
        child: Center(
          child: Image.asset(
            'assets/icon/logo.png',
            fit: BoxFit.cover,
            height: 100,
          ),
        ),
      ),
    );
  }
}
