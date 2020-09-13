import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget profileButtons() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _customButton('Following', KBlackColor),
        SizedBox(
          width: 6.0,
        ),
        _customButton('Message', KWhiteColor),
        SizedBox(
          width: 6.0,
        ),
        Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            color: KWhiteColor,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: Colors.grey.shade400,
              width: 0.5,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.keyboard_arrow_down,
              size: 20.0,
              color: KBlackColor,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _customButton(String title, Color color) {
  return Expanded(
    child: Container(
      height: 30.0,
      decoration: BoxDecoration(
        color: KWhiteColor,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.grey.shade400,
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              color: KBlackColor,
            ),
          ),
          SizedBox(
            width: 2.0,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 16.0,
            color: color,
          ),
        ],
      ),
    ),
  );
}
