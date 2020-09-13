import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget customLoginDivider(width){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _divider(width, EdgeInsets.only(right: 4.0)),
        Text('OR', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
        _divider(width, EdgeInsets.only(left: 4.0)),
      ],
    ),
  );
}
Widget _divider(width, direct){
  return Container(
    height: 0.5,
    width: (width/2) - 44.0,
    margin: direct,
    color: Colors.grey,
  );
}
Widget sharedDivider(width) {
  return Container(
    height: 0.5,
    width: width,
    color: KGreyColor,
  );
}