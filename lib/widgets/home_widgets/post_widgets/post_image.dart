import 'package:flutter/material.dart';

Widget postImage(double height, double width, String postImage){
  return Container(
    height: height > 360.0 ? height * 0.6 : height * 0.75,
    width: width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: ExactAssetImage(postImage),
        fit: BoxFit.fill,
      ),
    ),
  );
}