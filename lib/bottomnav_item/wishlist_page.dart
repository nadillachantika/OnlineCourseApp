import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../class/detailmycourse.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
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
          'Wishlist',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body:
      Container(
        // height: double.infinity,
        height: 160,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                                'Enroll',
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
            ),],
        ),
      ),
    );
  }
}
