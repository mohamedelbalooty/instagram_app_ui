import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget loginDetails(
    double value, String text, String detail, context, String screen) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: value),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: 12.0,
            color: KGreyColor,
          ),
        ),
        SizedBox(
          width: 2.0,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, screen);
          },
          child: Text(
            detail,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Colors.blue.shade900,
            ),
          ),
        ),
      ],
    ),
  );
}
