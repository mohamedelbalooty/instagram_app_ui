import 'package:flutter/material.dart';
import '../../../constants.dart';
Widget customLogo() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: Text(
      'Instagram',
      style: TextStyle(
        fontSize: 38.0,
        color: KBlackColor,
        fontFamily: 'Lobster',
        letterSpacing: 1.1,
      ),
    ),
  );
}
