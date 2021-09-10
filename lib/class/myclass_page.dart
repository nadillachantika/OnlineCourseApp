import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBarView(children: [
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
                      padding: EdgeInsets.all(2),
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
                                                color: Colors.grey,
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
                                            color: Color(0xff0096c7),
                                            textColor: Colors.white,
                                            onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailMyCourse()));
                                            },
                                          ),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          LinearPercentIndicator(
                            // width: 209,
                            lineHeight: 5.0,
                            percent: () {
                              double percent = 0.5;
                              return percent;
                            }(),
                            backgroundColor:
                            Color(0xff0096c7).withOpacity(0.3),
                            progressColor: Color(0xff0096c7),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '7 Lessons', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff888888)),
                                ),
                              ), Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '24 Lessons', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff888888)),
                                ),
                              )

                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

              ],
            ),


            //Tab Complete
            new ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Wrap(
                  children: [
                    Container(
                      // height: double.infinity,

                      width: double.infinity,
                      padding: EdgeInsets.all(2),
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
                                            color: Color(0xff0096c7),
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
      ),
    ));
  }
}
