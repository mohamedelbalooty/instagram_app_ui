import 'package:flutter/material.dart';
import '../../constants.dart';

Widget searchAppBar(){
  return AppBar(
    elevation: 0.0,
    backgroundColor: KWhiteColor,
    leading: Icon(
      Icons.search,
      size: 30.0,
      color: KBlackColor,
    ),
    titleSpacing: 0.0,
    title: Text(
      'Search',
      style: TextStyle(
        color: KGreyColor,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.center_focus_weak,
          size: 30.0,
          color: KBlackColor,
        ),
      ),
    ],
  );
}