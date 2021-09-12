import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DetailMyCourse extends StatefulWidget {
  const DetailMyCourse({Key? key}) : super(key: key);

  @override
  _DetailMyCourseState createState() => _DetailMyCourseState();
}

class _DetailMyCourseState extends State<DetailMyCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Detail',
            style: TextStyle(color: Color(0xff0096c7)),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Color(0xff0096c7),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Course File : "),
                Text("24 lesson "),
              ],
            ),
            new ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Wrap(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(children: [
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                  'assets/image/courseflutter.png',
                                )))),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "UI Design Principles",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.asset(
                                          'assets/icon/opsi.png',
                                          height: 13,
                                        )
                                      ],
                                    )),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Icon(
                                        Icons.access_time,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Text(
                                        "14 Menit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff888888),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LinearPercentIndicator(
                                        width: 209,
                                        lineHeight: 5.0,
                                        percent: () {
                                          double percent = 0.5;
                                          return percent;
                                        }(),
                                        backgroundColor:
                                            Color(0xff0096c7).withOpacity(0.3),
                                        progressColor: Color(0xff0096c7),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/icon/play.png',
                                    height: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),



                  ///////////////////////////////
                  Wrap(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(children: [
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image/courseflutter.png',
                                    )))),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "UI Design Principles",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.asset(
                                          'assets/icon/opsi.png',
                                          height: 13,
                                        )
                                      ],
                                    )),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Icon(
                                        Icons.access_time,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Text(
                                        "14 Menit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff888888),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      LinearPercentIndicator(
                                        width: 209,
                                        lineHeight: 5.0,
                                        percent: () {
                                          double percent = 0.5;
                                          return percent;
                                        }(),
                                        backgroundColor:
                                        Color(0xff0096c7).withOpacity(0.3),
                                        progressColor: Color(0xff0096c7),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/icon/play.png',
                                    height: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),
                  Wrap(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(children: [
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image/courseflutter.png',
                                    )))),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "UI Design Principles",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.asset(
                                          'assets/icon/opsi.png',
                                          height: 13,
                                        )
                                      ],
                                    )),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Icon(
                                        Icons.access_time,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Text(
                                        "14 Menit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff888888),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      LinearPercentIndicator(
                                        width: 209,
                                        lineHeight: 5.0,
                                        percent: () {
                                          double percent = 0.5;
                                          return percent;
                                        }(),
                                        backgroundColor:
                                        Color(0xff0096c7).withOpacity(0.3),
                                        progressColor: Color(0xff0096c7),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/icon/play.png',
                                    height: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),
                  Wrap(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(children: [
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image/courseflutter.png',
                                    )))),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "UI Design Principles",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.asset(
                                          'assets/icon/opsi.png',
                                          height: 13,
                                        )
                                      ],
                                    )),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Icon(
                                        Icons.access_time,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Text(
                                        "14 Menit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff888888),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      LinearPercentIndicator(
                                        width: 209,
                                        lineHeight: 5.0,
                                        percent: () {
                                          double percent = 0.5;
                                          return percent;
                                        }(),
                                        backgroundColor:
                                        Color(0xff0096c7).withOpacity(0.3),
                                        progressColor: Color(0xff0096c7),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/icon/play.png',
                                    height: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),
                  Wrap(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(children: [
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image/courseflutter.png',
                                    )))),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "UI Design Principles",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.asset(
                                          'assets/icon/opsi.png',
                                          height: 13,
                                        )
                                      ],
                                    )),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Icon(
                                        Icons.access_time,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Text(
                                        "14 Menit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff888888),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      LinearPercentIndicator(
                                        width: 209,
                                        lineHeight: 5.0,
                                        percent: () {
                                          double percent = 0.5;
                                          return percent;
                                        }(),
                                        backgroundColor:
                                        Color(0xff0096c7).withOpacity(0.3),
                                        progressColor: Color(0xff0096c7),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/icon/play.png',
                                    height: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),
                  Wrap(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(children: [
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image/courseflutter.png',
                                    )))),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "UI Design Principles",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.asset(
                                          'assets/icon/opsi.png',
                                          height: 13,
                                        )
                                      ],
                                    )),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Icon(
                                        Icons.access_time,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Text(
                                        "14 Menit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff888888),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      LinearPercentIndicator(
                                        width: 209,
                                        lineHeight: 5.0,
                                        percent: () {
                                          double percent = 0.5;
                                          return percent;
                                        }(),
                                        backgroundColor:
                                        Color(0xff0096c7).withOpacity(0.3),
                                        progressColor: Color(0xff0096c7),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/icon/play.png',
                                    height: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),Wrap(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(children: [
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image/courseflutter.png',
                                    )))),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "UI Design Principles",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Image.asset(
                                          'assets/icon/opsi.png',
                                          height: 13,
                                        )
                                      ],
                                    )),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Icon(
                                        Icons.access_time,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Container(
                                      child: Text(
                                        "14 Menit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff888888),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      LinearPercentIndicator(
                                        width: 209,
                                        lineHeight: 5.0,
                                        percent: () {
                                          double percent = 0.5;
                                          return percent;
                                        }(),
                                        backgroundColor:
                                        Color(0xff0096c7).withOpacity(0.3),
                                        progressColor: Color(0xff0096c7),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/icon/play.png',
                                    height: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),
                ]),
          ]),
        )));
  }
}
