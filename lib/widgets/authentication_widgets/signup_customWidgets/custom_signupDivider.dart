import 'package:flutter/material.dart';

Widget customSignupDivider(width) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _divider(width, EdgeInsets.only(right: 4.0)),
        Text(
          'OR',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        _divider(width, EdgeInsets.only(left: 4.0)),
      ],
    ),
  );
}

Widget _divider(width, direct) {
  return Container(
    height: 0.5,
    width: (width / 2) - 30.0,
    margin: direct,
    color: Colors.grey,
  );
}
