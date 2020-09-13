import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/home/home_screen.dart';
import '../../../constants.dart';

Widget facebookButton(double width, double height, context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, HomeScreen.id);
    },
    child: Container(
      height: 48.0,
      width: width,
      margin: EdgeInsets.fromLTRB(15.0, height * 0.12, 15.0, height * 0.08),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/icons/facebookWhite.png',
            height: 15.0,
            width: 15.0,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            'Continue with Facebook',
            style: TextStyle(
                fontSize: 16.0,
                color: KWhiteColor,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}
