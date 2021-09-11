import 'package:flutter/material.dart';

import 'checkout/checkout_page.dart';

class DetailArticle extends StatefulWidget {
  const DetailArticle({Key? key}) : super(key: key);

  @override
  _DetailArticleState createState() => _DetailArticleState();
}

class _DetailArticleState extends State<DetailArticle> {
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
              onPressed: () => Navigator.of(context).pop()),
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
                        image: AssetImage('assets/image/artikel.png')),
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
                            'How to: Work faster as\nFull Stack Designer',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage('assets/image/jenny.png'),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jenny',
                                        style:
                                            TextStyle(color: Color(0xff0096C7)),
                                      ),
                                      Text(
                                        'one hour ago',
                                        style: TextStyle(
                                            color: Color(0xff888888),
                                            fontSize: 10),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset('assets/icon/arsip.png',height: 24,),
                                SizedBox(width: 10,),
                                Container(
                                  height: 25,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Text('Follow'),
                                    color: Color(0xff0096c7),
                                    textColor: Colors.white,
                                    onPressed: () {
                                      // Navigator.push(context,
                                      //     MaterialPageRoute(builder: (context) => BottomNav()));
                                    },
                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, mauris, imperdiet molestie tincidunt mattis. Nibh sem eu urna augue sed. Erat aliquet posuere justo morbi montes. Commodo, proin rhoncus a condimentum mollis nisl. Turpis lacus, diam, tempus cursus lectus lectus placerat elementum, congue. Parturient nunc elementum, tellus id arcu, eu id viverra commodo. Dictum euismod eget facilisi ut quis malesuada viverra sed. Egestas eget mauris diam fames viverra fringilla amet. Gravida arcu pellentesque sed ipsum dolor elementum ut lorem egestas.',
                        maxLines: 10,
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Color(0xffB0B0B0)),
                      ),

                    ])),
                SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
