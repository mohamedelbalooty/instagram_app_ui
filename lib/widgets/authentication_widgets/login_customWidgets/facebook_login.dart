import 'package:flutter/material.dart';

Widget facebookLogin() {
  return Padding(
    padding: EdgeInsets.only(top: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/icons/facebook.png',
          height: 25.0,
          width: 25.0,
        ),
        SizedBox(width: 2.0,),
        Text(
          'Log in with Facebook',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ],
    ),
  );
}
