import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f8f8),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                new Flexible(
                  flex: 4,
                  child: Container(

                      // width: 313,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 0.1, color: Colors.grey)),
                      child: TextField(
                        decoration: new InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            focusColor: Colors.white),
                      )),
                ),
                new Flexible(
                  flex: 1,
                  child: Container(
                    // width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage('assets/image/imgprofil.png'))),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ImageSlideshow(
                width: double.infinity,
                height: 150,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                onPageChanged: (value) {
                  debugPrint('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: false,
                children: [
                  Image.asset(
                    'assets/image/promo.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/promo.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/promo.png',
                    fit: BoxFit.cover,
                  ),
                ]),
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rekomendasi Course',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                new Flexible(
                  flex: 1,
                  child: Container(
                    // height: 237,
                    // width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.05))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  topLeft: Radius.circular(4)),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'assets/image/courseflutter.png',
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: Column(
                            children: [
                              Text(
                                'Flutter Basic',
                                style: TextStyle(fontSize: 14),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Rizky Syaputra',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/icon/star.png',
                                        height: 13,
                                      ),
                                      Text(
                                        '5.5',
                                        textScaleFactor: 1.5,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Color(0xffba9b6c)),
                                      ),
                                      Text(
                                        '(105)',
                                        textScaleFactor: 1.5,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.black.withOpacity(0.5)),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Rp 1000.000,-',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                new Flexible(
                  flex: 1,
                  child: Container(
                    // height: 237,
                    // width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.05))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  topLeft: Radius.circular(4)),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'assets/image/courseweb.png',
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: Column(
                            children: [
                              Text(
                                'Web Intermeiate',
                                style: TextStyle(fontSize: 14),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Imroatun Nurul Jannah',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/icon/star.png',
                                        height: 13,
                                      ),
                                      Text(
                                        '5.5',
                                        textScaleFactor: 1.5,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Color(0xffba9b6c)),
                                      ),
                                      Text(
                                        '(105)',
                                        textScaleFactor: 1.5,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.black.withOpacity(0.5)),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Rp 1000.000,-',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Feedback',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)
                ),
                child: Row(children: [
                  Column(children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: AssetImage('assets/image/imgprofil.png'))),
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerLeft,
                        child: Text('Adzkia Cyra', style: TextStyle(color: Colors.blueAccent, fontSize: 14, fontWeight: FontWeight.w500),),

                    ), Align(
                      alignment: Alignment.centerLeft,
                        child: Text('Web Basic', style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400),),

                    ),


                  ])
                ]))
          ]),
        ),
      )),
    );
  }
}
