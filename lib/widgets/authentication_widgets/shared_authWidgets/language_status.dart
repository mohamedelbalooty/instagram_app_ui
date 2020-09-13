import 'package:flutter/material.dart';
import 'package:instagram/screens/language_screen.dart';
import '../../../constants.dart';

Widget languageStatus(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'English (United States)',
        style: TextStyle(
          color: KGreyColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 4.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LanguageScreen(),
              ),
            );
          },
          child: Icon(
            Icons.keyboard_arrow_down,
            color: KGreyColor,
          ),
        ),
      ),
    ],
  );
}
