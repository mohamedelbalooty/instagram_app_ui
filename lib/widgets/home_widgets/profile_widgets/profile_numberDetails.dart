import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget profileNumberDetails(screenHeight, screenWidth,
    profileImage, postsNumber, followersNumber, followingNumber) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 85.0,
          width: 85.0,
          decoration: BoxDecoration(
            border: Border.all(color: KBlackColor, width: 0.4),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: ExactAssetImage(profileImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(width:  0.0,),
        SizedBox(width: screenHeight > 360.0 ? 30.0 : screenWidth*0.4),
        _numberDetails(postsNumber, 'Posts'),
        SizedBox(width: screenHeight > 360.0 ? 15.0 : 35.0),
        _numberDetails(followersNumber, 'Followers'),
        SizedBox(width: screenHeight > 360.0 ? 15.0 : 35.0),
        _numberDetails(followingNumber, 'Following'),
      ],
    ),
  );
}

Widget _numberDetails(numbers, title) {
  return Column(
    children: <Widget>[
      Text(
        numbers,
        style: TextStyle(
          fontSize: 15.0,
          color: KBlackColor,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 15.0,
          color: KBlackColor,
        ),
      ),
    ],
  );
}
