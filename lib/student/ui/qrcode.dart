import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';
import 'package:barcode_widget/barcode_widget.dart';

class QrCode extends StatefulWidget {
  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {

  String qrString = 'Add Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Text(
          'QR Code',
          style: TextStyle(
              fontFamily: 'Mulish'
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BarcodeWidget(
            color: Colors.blue,
            data: qrString,
            height: 250,
            width: 250,
            barcode: Barcode.qrCode(),
          ),
          TextField(
            onChanged: (val){
              setState(() {
                qrString = val;
              });
            },
            decoration: InputDecoration(
              hintText: "Enter Data here",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
