import 'package:flutter/material.dart';
import 'package:online_courseapp/bottomnav.dart';
import 'package:online_courseapp/otp.dart';
import 'package:online_courseapp/register_page.dart';

import 'bottomnav_item/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Let’s Log In',
                  style: TextStyle(
                      fontSize: 23,
                      color: Color(0xFF0096C7),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Welcome back to your account!',
                  style: TextStyle(fontSize: 16, color: Color(0xFF0096C7)),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black.withOpacity(0.1)),
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 14, color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Email atau Username',
                        hintStyle:
                            TextStyle(fontSize: 12, color: Color(0xFF0096C7)),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black.withOpacity(0.1)),
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 14, color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle:
                            TextStyle(fontSize: 12, color: Color(0xFF0096C7)),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color(0xFF0096C7),
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 42,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Text('Login'),
                    color: Color(0xFF047397),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpPage()));
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Divider()),
                    Text(
                      ' Or ',
                      style: TextStyle(color: Color(0xFF888888)),
                    ),
                    Expanded(child: Divider())
                  ],
                ),
                SizedBox(
                  height: 40,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/ggl.png',
                          height: 23,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Google',
                            style: TextStyle(
                                color: Color(0xff0096c7), fontSize: 13)),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomNav()));
                    },
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/fb.png',
                          height: 23,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Continue with Facebook',
                            style: TextStyle(
                                color: Color(0xff0096c7), fontSize: 13)),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(color: Color(0xff0096c7)),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Color(0xff0096c7),
                              fontWeight: FontWeight.w500),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
