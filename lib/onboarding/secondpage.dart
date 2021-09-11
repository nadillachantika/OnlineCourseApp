import 'package:flutter/material.dart';

import '../login_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/ob2.png'),fit: BoxFit.cover

            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 340,),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Dibimbing oleh mentor yang\n berpengalaman dan\nluarbiasa',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}
