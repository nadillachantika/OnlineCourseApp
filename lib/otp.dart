import 'package:flutter/material.dart';
import 'package:online_courseapp/homepage.dart';

import 'login_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.close,
              color: Color(0xFF0096C7),
              size: 24,
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'OTP',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: Color(0xff0096c7)),
                ),
                SizedBox(
                  height: 52,
                ),
                Image.asset(
                  'assets/image/mobile.png',
                  height: 187,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Verification Code',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: Color(0xff0096c7)),
                ),
                Text(
                  'We have sent the code verification to\nYour Mobile Number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xff0096c7),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 42,
                  decoration: BoxDecoration(
                    //      color: Colors.white,
                    border: Border.all(color: Color(0xff0096c7)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('+628123456789',
                            style: TextStyle(
                                color: Color(0xff0096c7), fontSize: 13)),
                        Text('Change',
                            style: TextStyle(
                                color: Color(0xff0096c7), fontSize: 13)),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30,40,30,70),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: true),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 42,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text('Submit'),
                    color: Color(0xFF047397),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    )));
  }

  Widget _textFieldOTP({bool? first, last}) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF8F8F8),
          border: Border.all(width: 1, color: Color(0xFF0096C7),),
          borderRadius: BorderRadius.circular(8)



          ),
      height: 50,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          // autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );

  }
}
