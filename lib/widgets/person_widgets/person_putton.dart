import 'package:flutter/material.dart';

import '../../constants.dart';

Widget personButton(width) {
  return Container(
    height: 30.0,
    width: width,
    decoration: BoxDecoration(
      color: KWhiteColor,
      borderRadius: BorderRadius.circular(5.0),
      border: Border.all(
        color: Colors.grey.shade400,
        width: 0.5,
      ),
    ),
    child: Center(
      child: Text(
        'Edit Profile',
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
          color: KBlackColor,
        ),
      ),
    ),
  );
}
