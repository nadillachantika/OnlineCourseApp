import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Notification',
            style: TextStyle(color: Color(0xff0096c7)),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Color(0xff0096c7),
            ),
            onPressed: () {},
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Today', style: TextStyle(color: Colors.black),),
               ListView(
                 shrinkWrap: true,
                 scrollDirection: Axis.vertical,

                 children: [
                   Container(
                     padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Colors.white),
                     child: Row(
                       children: [
                         Container(
                           height: 45,
                           width: 45,
                           decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage('assets/image/lesson.png'),
                                   fit: BoxFit.fill)),
                         ),
                         Container(
                           // width: 300,
                           padding: EdgeInsets.only(left: 10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                 'New course added by Imroatun Nurul jannah\nabout new Web Design', maxLines: 2,
                                 style: TextStyle(color: Colors.black, fontSize: 12),
                               ),
                               Text(
                                 'One hour ago',
                                 maxLines: 2,
                                 textAlign: TextAlign.justify,
                                 style: TextStyle(color: Color(0xff888888), fontSize: 10),
                               ),

                             ],
                           ),
                         ),
                       ],
                     ),
                   ),

                   SizedBox(height: 10,),
                   Container(
                     padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Colors.white),
                     child: Row(
                       children: [
                         Container(
                           height: 45,
                           width: 45,
                           decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage('assets/image/lesson.png'),
                                   fit: BoxFit.fill)),
                         ),
                         Container(
                           // width: 300,
                           padding: EdgeInsets.only(left: 10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                 'New course added by Imroatun Nurul jannah\nabout new Web Design', maxLines: 2,
                                 style: TextStyle(color: Colors.black, fontSize: 12),
                               ),
                               Text(
                                 'One hour ago',
                                 maxLines: 2,
                                 textAlign: TextAlign.justify,
                                 style: TextStyle(color: Color(0xff888888), fontSize: 10),
                               ),

                             ],
                           ),
                         ),
                       ],
                     ),
                   ),

                   SizedBox(height: 10,),

                   Container(
                     padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Colors.white),
                     child: Row(
                       children: [
                         Container(
                           height: 45,
                           width: 45,
                           decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage('assets/image/lesson.png'),
                                   fit: BoxFit.fill)),
                         ),
                         Container(
                           // width: 300,
                           padding: EdgeInsets.only(left: 10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                 'New course added by Imroatun Nurul jannah\nabout new Web Design', maxLines: 2,
                                 style: TextStyle(color: Colors.black, fontSize: 12),
                               ),
                               Text(
                                 'One hour ago',
                                 maxLines: 2,
                                 textAlign: TextAlign.justify,
                                 style: TextStyle(color: Color(0xff888888), fontSize: 10),
                               ),

                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Tomorrow', style: TextStyle(color: Colors.black),),
                ),

                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,

                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/lesson.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            // width: 300,
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New course added by Imroatun Nurul jannah\nabout new Web Design', maxLines: 2,
                                  style: TextStyle(color: Colors.black, fontSize: 12),
                                ),
                                Text(
                                  'One hour ago',
                                  maxLines: 2,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(color: Color(0xff888888), fontSize: 10),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/lesson.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            // width: 300,
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New course added by Imroatun Nurul jannah\nabout new Web Design', maxLines: 2,
                                  style: TextStyle(color: Colors.black, fontSize: 12),
                                ),
                                Text(
                                  'One hour ago',
                                  maxLines: 2,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(color: Color(0xff888888), fontSize: 10),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/lesson.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            // width: 300,
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New course added by Imroatun Nurul jannah\nabout new Web Design', maxLines: 2,
                                  style: TextStyle(color: Colors.black, fontSize: 12),
                                ),
                                Text(
                                  'One hour ago',
                                  maxLines: 2,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(color: Color(0xff888888), fontSize: 10),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ));
  }
}
