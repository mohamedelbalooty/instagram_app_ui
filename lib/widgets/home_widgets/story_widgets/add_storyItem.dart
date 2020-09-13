import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget addStory() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      height: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 28.0,
                backgroundImage: AssetImage(
                  'assets/images/placeholder.jpg',
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 18.0,
                  width: 18.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: KWhiteColor, width: 1.5),
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: KWhiteColor,
                      size: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Your Story',
            style: TextStyle(
              color: KBlackColor,
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    ),
  );
}
