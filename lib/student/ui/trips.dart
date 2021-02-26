import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';

class Trips extends StatefulWidget {
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Text(
          'Trips',
        ),
      ),
      body: Center(
        child: Text('Trips Page'),
      ),
    );
  }
}
