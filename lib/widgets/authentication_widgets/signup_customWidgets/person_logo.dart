import 'package:flutter/material.dart';

Widget personLogo(double height) {
  return Padding(
    padding: EdgeInsets.only(top: height * 0.12, bottom: height * 0.03),
    child: Image.asset(
      'assets/images/icons/person.png',
      height: 160.0,
      width: 160.0,
    ),
  );
}
