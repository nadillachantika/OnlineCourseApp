import 'package:flutter/material.dart';
import 'package:online_courseapp/class/detailcourse_page.dart';

class ListCoursePage extends StatefulWidget {
  const ListCoursePage({Key? key}) : super(key: key);

  @override
  _ListCoursePageState createState() => _ListCoursePageState();
}

class _ListCoursePageState extends State<ListCoursePage> {
  List<Container> listKursus = [];
  var kursus = [
    {
      "nama": "UI Design Basic",
      "gambar": "assets/image/jessica.png",
      "subt": "Jessica",
      "rating": "4.5",
      "jml": "(105)",
      "fee": "Rp 200.000,-",
      "fav": "assets/icon/love.png"
    },
    {
      "nama": "Figma: Tools",
      "gambar": "assets/image/louis.png",
      "subt": "Louis",
      "rating": "5.0",
      "jml": "(105)",
      "fee": "Rp 200.000"
    },
    {
      "nama": "Figma: Prototype",
      "gambar": "assets/image/jenny.png",
      "subt": "Jenny",
      "rating": "4.5",
      "jml": "(105)",
      "fee": "Rp 200.000"
    },
    {
      "nama": "Fundamental UI/UX",
      "gambar": "assets/image/lin.png",
      "subt": "Lin",
      "rating": "5.0",
      "jml": "(105)",
      "fee": "Rp 200.000"
    },
    {
      "nama": "UI Design Intermediate",
      "gambar": "assets/image/max.png",
      "subt": "Max",
      "rating": "4.5",
      "jml": "(105)",
      "fee": "200.000"
    },
    {
      "nama": "UI Design Advance",
      "gambar": "assets/image/jessy.png",
      "subt": "Jessy",
      "rating": "5.0",
      "jml": "(105)",
      "fee": " Rp 200.000"
    }
  ];

  _buatListKursus() async {
    for (var i = 0; i < kursus.length; i++) {
      final member = kursus[i];
      final String gambar = member["gambar"] ?? "";

      listKursus.add(new Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              new Card(
                  child: new InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => DetailCourse()));
                      },
                      child: Container(
                        // height: 230,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              gambar,
                              fit: BoxFit.fill,
                              height: 125,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                member['nama'] ?? "",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                member['subt'] ?? "",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  member['fee'] ?? "",
                                  style: TextStyle(
                                      color: Color(0xFF047397),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      member['rating'] ?? "",
                                      textScaleFactor: 1.5,
                                      style: TextStyle(
                                          fontSize: 8.72,
                                          color: Color(0xffba9b6c)),
                                    ),
                                    Text(
                                      member['jml'] ?? "",
                                      textScaleFactor: 1.5,
                                      style: TextStyle(
                                          fontSize: 8.72,
                                          color: Colors.black.withOpacity(0.5)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )))
            ],
          )));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _buatListKursus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back_ios_sharp),
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    new Flexible(
                      flex: 1,
                      child: Container(
                        height: 50,
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_sharp,
                            ),
                            iconSize: 20,
                            color: Color(0xff0096c7),
                            onPressed: () => Navigator.of(context).pop()),
                      ),
                    ),
                    new Flexible(
                      flex: 4,
                      child: Container(

                          // width: 313,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(width: 0.1, color: Colors.grey)),
                          child: TextField(
                            decoration: new InputDecoration(
                                hintText: 'Search',
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                                focusColor: Colors.white),
                          )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    new Flexible(
                      flex: 1,
                      child: Container(
                        // width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon/sort.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Showing searching result for “UI Design”',
                      style: TextStyle(
                        color: Color(0xff888888),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.count(
                  crossAxisCount: 2,
                  physics: ClampingScrollPhysics(),
                  children: listKursus,
                  shrinkWrap: true,



                  // mainAxisSpacing: 10,
                  childAspectRatio: 19/22,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
