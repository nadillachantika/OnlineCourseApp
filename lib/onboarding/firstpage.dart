import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/ob1.png'), fit: BoxFit.none)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Lewati',
                  style: TextStyle(fontFamily:'Poppins',color: Colors.white,
                  fontSize: 16, fontWeight:FontWeight.w400),

                ),
              ),
      ),
              SizedBox(height: 350,),
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
        //     Text(
        //       'Belajar berbagai skill pemrograman hanya dengan satu aplikasi',
        //       maxLines: 3,
        //       textAlign: TextAlign.center,
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     Align(
        //       alignment: Alignment.bottomRight,
        //       child: Text(
        //         'Selanjutnya',
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     ),
        //
        //   ],
        // ),
      ),
    );
  }
}
