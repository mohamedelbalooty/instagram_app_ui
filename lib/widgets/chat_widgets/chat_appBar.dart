import 'package:flutter/material.dart';
import '../../constants.dart';

Widget chatAppBar(){
  return AppBar(
    automaticallyImplyLeading: true,
    iconTheme: IconThemeData(color: KBlackColor),
    backgroundColor: KWhiteColor,
    elevation: 2.0,
    titleSpacing: 0.0,
    title: Text(
      'Direct',
      style: TextStyle(
        color: KBlackColor,
        fontSize: 19.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Image.asset(
          'assets/images/icons/video.png',
          height: 30.0,
          width: 30.0,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Image.asset(
          'assets/images/icons/edit.png',
          height: 21.0,
          width: 21.0,
        ),
      ),
    ],
  );
}