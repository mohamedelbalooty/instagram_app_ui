import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget profileInfo(profileName, profileTitle, followersNumber) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          profileName,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: KBlackColor,
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Followed by ',
              style: TextStyle(
                fontSize: 16.0,
                color: KBlackColor,
              ),
            ),
            Text(
              profileTitle,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: KBlackColor,
              ),
            ),
            Text(
              ' and ',
              style: TextStyle(
                fontSize: 16.0,
                color: KBlackColor,
              ),
            ),
            Text(
              '${followersNumber} others',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: KBlackColor,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
