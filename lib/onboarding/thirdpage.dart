import 'package:flutter/material.dart';
import 'package:online_courseapp/login_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/ob3.png'),fit: BoxFit.cover

            )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Lewati',
                  style: TextStyle(color: Colors.white,
                      fontSize: 16, fontWeight:FontWeight.w400),

                ),
              ),
            ),
            SizedBox(height: 350,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Lets Join With Us!',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 60),
            Container(
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),

              ),
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('Get Start!'),
                color: Color(0xFF0096C7),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
              ),
            ),


          ],
        ),
      ),


    );
  }
}
