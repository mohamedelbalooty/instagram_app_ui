import 'package:flutter/material.dart';
import 'package:instagram/screens/home/home.dart';
import '../../../constants.dart';

Widget customButton(double width, String title, context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    },
    child: Container(
      height: 48.0,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: KWhiteColor),
      )),
    ),
  );
}
