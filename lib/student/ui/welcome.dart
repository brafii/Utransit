import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';
import 'package:utransit_app/student/my_button.dart';
import 'package:utransit_app/student/ui/login_screen.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 400.0,
                child: Image(
                  image: AssetImage('images/ride.jpg'),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 60.0),
                color: lightGreen,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WELCOME',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 35.0,
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                      ),
                    ),
                    SizedBox(height: 80.0,),
                    Container(
                      width: double.infinity,
                      child: MyButton(
                        label: 'CONTINUE',
                        onpressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
