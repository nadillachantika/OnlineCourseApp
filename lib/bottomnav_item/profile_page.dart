import 'package:flutter/material.dart';
import 'package:online_courseapp/detail_sertifikat.dart';

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
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              // height: 300,
              decoration: BoxDecoration(
                  color: Color(0xff0096c7),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Nia Sari',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'niasari@gmail.com',
                    style: TextStyle(
                        color: Color(0xfff8f8f8),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 136,
                    child: FlatButton(
                      height: 32,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      color: Colors.white,
                      textColor: Color(0xff0096c7),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height: 175,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // baris 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //icon course enroll
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              Image.asset('assets/icon/enroll.png', width: 50,height: 50,),
                              SizedBox(
                                width: 2,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '42',
                                    style: TextStyle(
                                        color: Color(0xff0096c7), fontSize: 19),
                                  ),
                                  Text(
                                    'Course Enroll',
                                    style: TextStyle(
                                        color: Color(0xff888888), fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        //couse instructor

                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icon/instructor.png',
                                height: 45,width: 45,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '13',
                                    style: TextStyle(
                                        color: Color(0xff0096c7), fontSize: 19),
                                  ),
                                  Text(
                                    'Course Instructor',
                                    style: TextStyle(
                                        color: Color(0xff888888), fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(width: 13,)
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// baris 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //icon course enroll
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              Image.asset('assets/icon/upcoming.png', width: 50, height: 50,),
                              SizedBox(
                                width: 2,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '10',
                                    style: TextStyle(
                                        color: Color(0xff0096c7), fontSize: 19),
                                  ),
                                  Text(
                                    'Course Upcoming',
                                    style: TextStyle(
                                        color: Color(0xff888888), fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        //couse instructor

                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              Image.asset('assets/icon/done.png', height: 50, width: 50,),
                              SizedBox(
                                width: 2,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '13',
                                    style: TextStyle(
                                        color: Color(0xff0096c7), fontSize: 19),
                                  ),
                                  Text(
                                    'Course Completed',
                                    style: TextStyle(
                                        color: Color(0xff888888), fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Certificate',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color(0xff0096c7),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Row(
                children: [
                  Container(
                    height: 84,
                    width: 172,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/certificate.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UI Design',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'You have successfully\ncomplete the course',
                          maxLines: 2,
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Color(0xff888888)),
                        ),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailSertifikat()));
                                },
                                child: Text(
                                  'Detail', textAlign: TextAlign.right,
                                  style: TextStyle(color: Color(0xff0096c7),),),
                              )

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
