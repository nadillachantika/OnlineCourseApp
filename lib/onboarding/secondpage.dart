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
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
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
            SizedBox(height: 340,),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Selanjutnya',
                  style: TextStyle(color: Colors.white,
                      fontSize: 16, fontWeight:FontWeight.w400),

                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}
