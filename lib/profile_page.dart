import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff0096c7),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
          onPressed: (){},

        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            // height: 300,
            decoration: BoxDecoration(
              color: Color(0xff0096c7),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 52,
                  backgroundColor: Colors.white,
                  child: new CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/image/imgprofil.png'),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Nia Sari', style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),),
                Text('niasari@gmail.com', style: TextStyle(color: Color(0xfff8f8f8), fontSize: 13, fontWeight: FontWeight.w400),),
                SizedBox(height: 24,),
                Container(
                  width: 136,
                  child: FlatButton(
                    height: 32,
                    padding: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text('Logout', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,),),
                    color: Colors.white,
                    textColor: Color(0xff0096c7),

                    onPressed: () {},
                  ),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
