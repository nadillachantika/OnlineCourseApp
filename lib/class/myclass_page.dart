import 'package:flutter/material.dart';

import 'detailmycourse.dart';

class MyClass extends StatefulWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Upcoming'),
              Tab(text: 'Completed'),
            ],
            labelColor: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color(0xff0096C7),
                ))
          ],
          title: const Text(
            'My Class',
            style: TextStyle(color: Color(0xff0096C7)),
          ),
          centerTitle: true,
        ),
        body: TabBarView(children: [
          //page upcoming
          new ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Wrap(
                children: [
                  Container(
                    // height: double.infinity,

                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 116,
                              width: 176,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/image/jessica2.png')),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'UI Design Basic',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  Text(
                                    'about the visual aspects displayed on websites and mobile applications ',
                                    maxLines: 3,
                                    style: TextStyle(color: Color(0xff888888)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color: Color(0xff0096c7),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Jessica',
                                              style: TextStyle(
                                                  color: Color(0xff0096C7)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Text(
                                            'Continue',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          color: Color(0xFF047397),
                                          textColor: Colors.white,
                                          onPressed: () {
                                            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                          },
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Wrap(
                children: [
                  Container(
                    // height: double.infinity,

                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 116,
                              width: 176,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/image/jessica2.png')),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'UI Design Basic',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  Text(
                                    'about the visual aspects displayed on websites and mobile applications ',
                                    maxLines: 3,
                                    style: TextStyle(color: Color(0xff888888)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color: Color(0xff0096c7),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Jessica',
                                              style: TextStyle(
                                                  color: Color(0xff0096C7)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                          child: Text(
                                            'Continue',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          color: Color(0xFF047397),
                                          textColor: Colors.white,
                                          onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailMyCourse()));
                                          },
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          new ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Wrap(
                children: [
                  Container(
                    // height: double.infinity,

                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 116,
                              width: 176,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/image/jessica2.png')),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'UI Design Basic',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  Text(
                                    'about the visual aspects displayed on websites and mobile applications ',
                                    maxLines: 3,
                                    style: TextStyle(color: Color(0xff888888)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color: Color(0xff0096c7),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Jessica',
                                              style: TextStyle(
                                                  color: Color(0xff0096C7)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(4)),
                                          child: Text(
                                            'Review',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          color: Color(0xFF047397),
                                          textColor: Colors.white,
                                          onPressed: () {
                                            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                          },
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ]),
      ),
    ));
  }
}
