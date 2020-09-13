import 'package:flutter/material.dart';
import '../../constants.dart';

Widget chatTextField() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 16.0),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: KGreyColor,
          fontSize: 18.0,
          // fontWeight: FontWeight.w00,
        ),
        prefixIcon: Icon(Icons.search, color: KGreyColor, size: 28.0,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: KGreyColor, width: 0.8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: KGreyColor, width: 0.8),
        ),
      ),
    ),
  );
}