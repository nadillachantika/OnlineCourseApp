import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:online_courseapp/class/detailcourse_page.dart';
import 'package:online_courseapp/profile_page.dart';

import 'class/listcourse_page.dart';

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));

                    },
                    child: Container(
                      // width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage('assets/image/imgprofil.png'))),
                    ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(
                    'Rekomendasi Course',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ListCoursePage()));

                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Color(0xff0096c7),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),


                ] ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailCourse()));

                    },
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              color:
                                                  Colors.black.withOpacity(0.5)),
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
                ),
                SizedBox(
                  width: 10,
                ),
                new Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailCourse()));
                    },
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              color:
                                                  Colors.black.withOpacity(0.5)),
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
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text(
                        'Article',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),Text(
                        'See All',
                        style: TextStyle(
                            color: Color(0xff0096c7),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),


                    ] ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/image/courseweb.png',
                  height: 70,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  'Figma Tutorial for Complete\nBeginners',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'UI Design',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF828282)),
                ),
                trailing: Image.asset(
                  'assets/icon/iclove.png',
                  height: 15,
                  fit: BoxFit.contain,
                ),
              ),

            )
          ]),
        ),
      )),
    );
  }
}
