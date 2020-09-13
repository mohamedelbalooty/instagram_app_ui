import 'package:flutter/material.dart';
import '../../constants.dart';

Widget addAppBar(){
  return AppBar(
    elevation: 2.0,
    backgroundColor: KWhiteColor,
    leading: Icon(
      Icons.close,
      size: 35.0,
      color: KBlackColor,
    ),
    titleSpacing: 5.0,
    title: Row(
      children: <Widget>[
        Text(
          'Photos',
          style: TextStyle(
            color: KBlackColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 10.0,),
        Icon(
          Icons.arrow_drop_down,
          size: 25.0,
          color: KBlackColor,
        ),
      ],
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
        child: Text(
          'Next',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ],
  );
}