import 'package:flutter/material.dart';

import 'bottomnav.dart';

class DetailSertifikat extends StatefulWidget {
  const DetailSertifikat({Key? key}) : super(key: key);

  @override
  _DetailSertifikatState createState() => _DetailSertifikatState();
}

class _DetailSertifikatState extends State<DetailSertifikat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff0096c7),
          ),
          onPressed: () => Navigator.pop(context),

        ),
        backgroundColor: Color(0xfff8f8f8),
        title: Text(
          'Certificate',
          style: TextStyle(color: Color(0xff0096c7)),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/certificate2.png'))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 42,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                child: Text('Download'),
                color: Color(0xff0096c7),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNav()));
                },
              ),
            ),
            SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Text(
                'Back To Home',
                style: TextStyle(
                    color: Color(0xff047397),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
