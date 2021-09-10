import 'package:flutter/material.dart';

import 'confirmation_page.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _radioValue = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _radioValue = value!;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        elevation: 0,
        title: Text('Payment Method', style: TextStyle(fontSize: 14, color: Color(0xff0096c7), fontWeight: FontWeight.w500),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp, color: Color(0xff0096c7),),
          onPressed: (){},
        ),
        centerTitle: true,
        backgroundColor: Color(0xfff8f8f8),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My Cards', style: TextStyle(color: Color(0xff0096c7), fontWeight: FontWeight.w500, fontSize: 19),),
             SizedBox(height: 10,),
              Align(
                alignment: Alignment.center,
                  child: Image.asset('assets/image/card.png',height: 200,)),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, color: Color(0xff0096c7),),
                    Text('Add Credit Card', style: TextStyle(fontSize: 13, color: Color(0xff0096c7)),)

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Other Payment Method', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
              ListTile(
                leading: Container(
                    height: 25,
                    width: 40,
                    child: Image.asset('assets/image/mastercard.png', fit: BoxFit.contain,)),
                title: Text('Credit/Debit Card',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),),
                trailing: new Radio(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                  activeColor: Color(0xFF4f4f4f),
                ),
              ),ListTile(
                leading: Container(
                  height: 25,
                    width: 40,
                    child: Image.asset('assets/image/ppal.png', fit: BoxFit.contain,)),
                title: Text('Paypal',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),),
                trailing: new Radio(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                  activeColor: Color(0xFF4f4f4f),
                ),
              ),ListTile(
                leading: Container(
                    height: 25,
                    width: 40,
                    child: Image.asset('assets/image/gpay.png',fit: BoxFit.contain,)),
                title: Text('Google Pay',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),),
                trailing: new Radio(
                  value: 2,
                  groupValue: _radioValue,
                  onChanged: _handleRadioValueChange,
                  activeColor: Color(0xFF4f4f4f),
                ),
              ),
              SizedBox(height: 140,),
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
                  Text('Done', style: TextStyle(color: Colors.white, fontSize: 13)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmationPage()));
                  },
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
