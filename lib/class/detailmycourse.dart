

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
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 margin: EdgeInsets.fromLTRB(16, 20, 0, 0),
                 child: Text("Course File : "),
               ),
               Container(
                 margin: EdgeInsets.fromLTRB(0, 20, 16, 0),
                 child: Text("24 lesson "),
               ),
             ],
           ),
           SizedBox(height: 10,),
           Card(
             elevation: 5,
             child: Padding(padding: EdgeInsets.all(8),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           Container(
                             child: Image.asset("assets/image/jessica.png", height: 90,width: 90,),
                           ),
                           Container(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                           //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 8),
                                   child: Container(
                                     child: Text("UI Design Principles"),
                                   ),
                                 ),
                                 Row(
                                   children: [
                                     Padding(padding: EdgeInsets.only(left: 8),
                                       child: Container(
                                         child: Icon(Icons.access_time, size: 15,),
                                       ),
                                     ),
                                     Padding(padding: EdgeInsets.only(left: 8),
                                       child: Container(
                                         child: Text("14 Menit"),
                                       ),
                                     ),
                                   ],
                                 ),
                                 SizedBox(height: 15,),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.start,
                                     children: [
                                       LinearPercentIndicator(
                                         lineHeight: 15.0,
                                         percent: () {
                                           double percent = 0.5;
                                           // try {
                                           //   if (widget.jelajah.totalPo ==
                                           //       widget.jelajah
                                           //           .estiTotWeight) {
                                           //     percent = double.parse(
                                           //         widget.jelajah
                                           //             .totalPo) /
                                           //         100;
                                           //   } else {
                                           //     percent = double.parse(
                                           //         widget.jelajah.totalPo);
                                           //   }
                                           // } catch (e) {}
                                           return percent;
                                         }(),
                                         backgroundColor:
                                         Color(0xFFF2F2F2),
                                         progressColor: Color(0xFF4CAAAA),
                                       ),
                                       Padding(
                                         padding:
                                         const EdgeInsets.all(5.0),
                                         child: Row(
                                           mainAxisAlignment:
                                           MainAxisAlignment
                                               .spaceBetween,
                                           children: [
                                             Text(''),
                                             Text(
                                               '80%',
                                               style: TextStyle(
                                                   color:
                                                   Color(0xFF4CAAAA),
                                                   fontSize: 16,
                                                   fontWeight:
                                                   FontWeight.bold),
                                             )
                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                // Container(child: LinearPercentIndicator())
                                 // Row(
                                 //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 //   children: [
                                 //     Padding(padding: EdgeInsets.only(left: 8),
                                 //       child: Column(
                                 //         crossAxisAlignment: CrossAxisAlignment.start,
                                 //         children: [
                                 //
                                 //         ],
                                 //       )
                                 //     ),
                                 //     Image.asset("assets/icon/play.png", height: 25,width: 25,)
                                 //   ],
                                 // ),
                               ],
                             ),
                           ),
                         ],
                       )
                     ],
                   )
                 ],
               ),
             ),
           ),
           // ListView(
           //   children: [
           //     Card(
           //       child: Padding(padding: EdgeInsets.all(8),
           //         child: Column(
           //           crossAxisAlignment: CrossAxisAlignment.start,
           //           children: [
           //             Column(
           //               crossAxisAlignment: CrossAxisAlignment.start,
           //               children: [
           //                 Row(
           //                   children: [
           //                     Container(
           //                       child: Image.asset("assets/image/courseflutter.png", height: 100,width: 100,),
           //                     )
           //                   ],
           //                 ),
           //               ],
           //             )
           //           ],
           //         ),
           //       ),
           //     ),
           //   ],
           // )
         ],
       ),
     ),
    );
  }
}
