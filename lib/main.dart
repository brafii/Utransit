import 'package:flutter/material.dart';
import 'package:utransit_app/student/ui/dashboard.dart';
import 'package:utransit_app/student/ui/load_funds.dart';
import 'package:utransit_app/student/ui/login_screen.dart';
import 'package:utransit_app/student/ui/payment.dart';
import 'package:utransit_app/student/ui/qrcode.dart';
import 'package:utransit_app/student/ui/support_page.dart';
import 'package:utransit_app/student/ui/thankyou.dart';
import 'package:utransit_app/student/ui/trips.dart';
import 'package:utransit_app/student/ui/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        'login': (context) => Login(),
        'support': (context) => Support(),
        'thanks': (context) => ThankYou(),
        'dashboard': (context) => Dashboard(),
        'trips': (context) => Trips(),
        'funds': (context) => LoadFunds(),
        'payment': (context) => Payment(),
        'qrcode': (context) => QrCode(),
      },
    );
  }
}

