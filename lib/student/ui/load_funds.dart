import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';
import 'package:utransit_app/student/const.dart';
import 'package:utransit_app/student/ui/payment.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class LoadFunds extends StatefulWidget {
  @override
  _LoadFundsState createState() => _LoadFundsState();
}

class _LoadFundsState extends State<LoadFunds> {

  String _data = "";

  _scan() async{
    await FlutterBarcodeScanner.scanBarcode(
        "#d41e37",
        "Cancel",
        true,
        ScanMode.QR
    ).then((value) => setState(() => _data = value));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Text(
          'Load Funds',
          style: TextStyle(
              fontFamily: 'Mulish'
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: loginContainerSize,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Select Payment method',
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.0,),
            Card(
              color: Color(0xFFFFCA08),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'MTN',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.white
                      ),
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF00688F),),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Card(
              color: Color(0xFFE51E23),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'VODAFONE',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 25.0,
                          color: Colors.white
                      ),
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Card(
              color: Color(0xFFF7F7F7),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AIRTEL',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 25.0,
                            color: Color(0xFFE4322E),
                        ),
                      ),
                      Text(
                        'TIGO',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 25.0,
                          color: Color(0xFF37395F),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF37395F),),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            GestureDetector(
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => Payment()),
              // );
              onTap: () => _scan(),

              child: Card(
                color: Color(0xFF24762E),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'U-CREDIT',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                  ),
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}
