import 'package:flutter/material.dart';

import '../login_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/ob1.png'), fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                SizedBox(height: 320,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Belajar berbagai skill pemrograman hanya\ndengan satu aplikasi',
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w400),
                  ),
                ),


          ],
          ),
        ),
      ),
    );
  }
}
