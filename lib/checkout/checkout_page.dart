import 'package:flutter/material.dart';
import 'package:online_courseapp/checkout/payment_method.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff0096c7),
          ),
        ),
        backgroundColor: Color(0xfff8f8f8),
        title: Text(
          'Checkout Course',
          style: TextStyle(color: Color(0xff0096c7)),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Course Detail',
              style: TextStyle(
                  fontSize: 19,
                  color: Color(0xff0096c7),
                  fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'instructor',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                ),
                Text(
                  'Ravelina',
                  style: TextStyle(
                      color: Color(0xff0096c7),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lesson',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                ),
                Text(
                  'UI Design Basic',
                  style: TextStyle(
                      color: Color(0xff0096c7),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                ),
                Text(
                  '4 September 2021',
                  style: TextStyle(
                      color: Color(0xff0096c7),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                ),
                Text(
                  'Rp 1000.000',
                  style: TextStyle(
                      color: Color(0xff0096c7),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                )
              ],
            ),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff0096c7), width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FlatButton(
                      color: Color(0xfff8f8f8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon/addcourse.png',
                            height: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Add an another lesson',
                              style: TextStyle(
                                  color: Color(0xff0096c7), fontSize: 13)),
                        ],
                      ),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 200,),

            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: FlatButton(
                color: Color(0xff047397),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child:
                    Text('Complete the Payment', style: TextStyle(color: Colors.white, fontSize: 13)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
                },
              ),
            )


          ],
        ),
      ),
    );
  }
}
