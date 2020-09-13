import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import '../constants.dart';
import 'login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, LoginScreen.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: KWhiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.16,
            ),
            Image(
              height: 110.0,
              width: 110.0,
              image: AssetImage('assets/images/icons/instagram.png'),
            ),
            SizedBox(
              height: height * 0.32,
            ),
            Text(
              'from',
              style: TextStyle(
                  color: KGreyColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,),
            ),
            SizedBox(
              height: 5.0,
            ),
            GradientText(
              "Facebook".toUpperCase(),
              gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.red, Colors.deepPurple],
              ),
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.1),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
