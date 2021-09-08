import 'package:flutter/material.dart';
import 'package:online_courseapp/onboarding/secondpage.dart';
import 'package:online_courseapp/onboarding/thirdpage.dart';
import 'package:dots_indicator/dots_indicator.dart';


import 'firstpage.dart';
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int currentPageIndex=0;
  int pageLength=0;

  @override
  void initState() {
    currentPageIndex = 0;
    pageLength = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              PageView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  FirstPage(),
                  SecondPage(),
                  ThirdPage(),
                ],
                onPageChanged: (value) {
                  setState(() {
                    currentPageIndex = value;
                  });
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new DotsIndicator(
                      dotsCount: pageLength,
                      position: currentPageIndex.toDouble(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}