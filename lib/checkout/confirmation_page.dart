import 'package:flutter/material.dart';
import 'package:online_courseapp/bottomnav.dart';
import 'package:online_courseapp/class/myclass_page.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Confirmation',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff0096c7),
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff0096c7),
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Color(0xfff8f8f8),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/image/success.png',
                          height: 280,
                        )),
                    Text(
                      'Payment Success',
                      style: TextStyle(
                          color: Color(0xff0096c7),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      'You will be notified push notification\nbefore class start',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Color(0xff888888)),
                    )
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Detail Transaction',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xff047397)),
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: FlatButton(
                color: Color(0xff047397),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('Go to Active Class',
                    style: TextStyle(color: Colors.white, fontSize: 13)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
