import 'package:flutter/material.dart';
import 'package:instagram/screens/person/person_settingScreen.dart';
import '../../constants.dart';

Widget personAppBar(context) {
  return AppBar(
    backgroundColor: KWhiteColor,
    automaticallyImplyLeading: false,
    centerTitle: false,
    elevation: 0.0,
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'PersonScreen',
          style: TextStyle(
            color: KBlackColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 4.0,
        ),
        Icon(
          Icons.keyboard_arrow_down,
          size: 18.0,
          color: KBlackColor,
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PersonSettingScreen()),
          );
        },
        icon: Icon(
          Icons.dehaze,
          size: 30.0,
          color: KBlackColor,
        ),
      ),
    ],
  );
}
