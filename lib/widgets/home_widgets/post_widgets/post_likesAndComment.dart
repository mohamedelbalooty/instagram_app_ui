import 'package:flutter/material.dart';
import 'package:instagram/screens/home/comment_page.dart';

import '../../../constants.dart';

Widget postLikeAndComment(
    String likeNumbers,
    String comments,
    String profileName,
    String commentsNumbers,
    String profileImage,
    String date) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 14.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$likeNumbers likes',
          style: TextStyle(
            color: KBlackColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              '$comments',
              style: TextStyle(
                color: KBlackColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              'Follow',
              style: TextStyle(
                color: KBlackColor,
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              '@$profileName',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.0,
        ),
        Row(
          children: <Widget>[
            Text(
              'more!',
              style: TextStyle(
                color: KBlackColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '... more',
              style: TextStyle(
                color: KGreyColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'View all $commentsNumbers comments',
          style: TextStyle(
            color: KGreyColor,
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 14.0,
              backgroundImage: AssetImage(profileImage),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'Add comment...',
              style: TextStyle(
                color: KGreyColor,
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Icon(
              Icons.favorite,
              size: 15.0,
              color: Colors.pinkAccent.shade200,
            ),
            SizedBox(
              width: 8.0,
            ),
            Icon(
              Icons.add_circle_outline,
              size: 15.0,
              color: Colors.grey.shade400,
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          date,
          style: TextStyle(
            color: KGreyColor,
            fontSize: 14.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    ),
  );
}
