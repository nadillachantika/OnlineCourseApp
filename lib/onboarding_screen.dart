import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,

        themeColor: Colors.blue,
        pages: pages,
        skipClicked: (value) {
          _globalKey.currentState!.showSnackBar(
              SnackBar(content: Text('Skip clicked')));
        },
        getStartedClicked: (value) {
          _globalKey.currentState!.showSnackBar(
              SnackBar(content: Text('Get Started clicked')));
        },
      ),

    );
  }
    final pages = [
      SkOnboardingModel(
          title: 'Daftar Melalui Online',
          description: 'Daftarkan dirimu',
          imagePath: 'assets/image/ob1.png',
          titleColor: Colors.white,
          descripColor: Colors.grey),
      SkOnboardingModel(
          title: 'Daftar Melalui Online',
          description: 'Daftarkan dirimu',
          imagePath: 'assets/image/ob2.png',
          titleColor: Colors.white,
          descripColor: Colors.grey),
      SkOnboardingModel(
          title: 'Simple tidak ribet',
          description: 'Daftarkan dirimu',
          imagePath: 'assets/image/ob3.png',
          titleColor: Colors.white,
          descripColor: Colors.grey),

    ];
  }

