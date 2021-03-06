import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_courseapp/bottomnav.dart';
import 'package:online_courseapp/checkout/checkout_page.dart';
import 'package:online_courseapp/class/detailcourse_page.dart';
import 'package:online_courseapp/class/detailmycourse.dart';
import 'package:online_courseapp/login_page.dart';
import 'package:online_courseapp/class/myclass_page.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:online_courseapp/checkout/payment_method.dart';
import 'package:online_courseapp/splashscreen.dart';

import 'onboarding/firstpage.dart';
import 'onboarding/secondpage.dart';
import 'onboarding/thirdpage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
          primarySwatch: Colors.blue,
          backgroundColor: Color(0xE5E5E5),
          fontFamily: 'Poppins'

      ),
      home: SplashScreen(),
    );
  }
}