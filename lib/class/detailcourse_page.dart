import 'package:flutter/material.dart';
import 'package:online_courseapp/checkout/checkout_page.dart';

class DetailCourse extends StatefulWidget {
  const DetailCourse({Key? key}) : super(key: key);

  @override
  _DetailCourseState createState() => _DetailCourseState();
}

class _DetailCourseState extends State<DetailCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        appBar: AppBar(
          backgroundColor: Color(0xFFF8F8F8),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.blue,
            ),
              onPressed: () => Navigator.of(context).pop()
          ),
          title: Text(
            'Detail',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icon/love2.png',
                  height: 18,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 245,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/image/jessica2.png')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    // height: 176,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'UI Design Basic',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                '4.5',
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    fontSize: 9, color: Color(0xffba9b6c)),
                              ),
                              Text(
                                '(105)',
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.black.withOpacity(0.5)),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                      style: TextStyle(color: Color(0xff0096C7)),
                                    ),
                                  ],
                                ),
                                Text(
                                  '10h 45min - 17 Lesson',
                                  style: TextStyle(
                                      color: Color(0xff888888), fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Rp 200.000,-',
                            style: TextStyle(color: Color(0xff047397)),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'This is a description of the material of the course this is a description of the material of the course this is a description of the material of the course. This is a description.',
                        maxLines: 4,
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Color(0xffB0B0B0)),
                      )
                    ])),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                    Text(
                      'Lesson',textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0xff0096C7),fontSize: 15),
                    ),
                    ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,

                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/image/courseweb.png', height: 50,),
                          title: Text('Introduction of UI Design'),
                          subtitle: Text('1h 45min '),
                        ),
                        ListTile(
                          leading: Image.asset('assets/image/courseweb.png', height: 50,),
                          title: Text('Introduction of UI Design'),
                          subtitle: Text('1h 45min '),
                        ),
                        ListTile(
                          leading: Image.asset('assets/image/courseweb.png', height: 50,),
                          title: Text('Introduction of UI Design'),
                          subtitle: Text('1h 45min '),
                        ),

                      ],
                    ),

                  ]),
                ),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  height: 42,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text('Enroll Class'),
                    color: Color(0xFF047397),
                    textColor: Colors.white,
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
