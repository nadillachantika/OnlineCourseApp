import 'package:flutter/material.dart';
import 'package:online_courseapp/onboarding/secondpage.dart';
import 'package:online_courseapp/onboarding/thirdpage.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../login_page.dart';
import 'firstpage.dart';
class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
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

              // Untuk memanggil page 1,2,3
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

              // untuk text 'Lewati' yang ada di pojokan kanan
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Text(
                      'Lewati',
                      style: TextStyle(color: Colors.white,
                          fontSize: 16, fontWeight:FontWeight.w400),

                    ),
                  ),
                ),
              ),


              // untuk wiget Dots Indicator
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new DotsIndicator(
                        dotsCount: pageLength,
                        position: currentPageIndex.toDouble(),
                      ),
                    ],
                  ),
                ),
              ),

              // untuk text 'selanjutnya' yang ada di sebelah dots indicator
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 50),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Selanjutnya', style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}