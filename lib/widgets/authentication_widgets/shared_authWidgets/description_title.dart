import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget descriptionTitle(
    String title, EdgeInsetsGeometry padding, double size, double space) {
  return Padding(
    padding: padding,
    child: Text(
      title,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        color: KGreyColor,
        fontSize: size,
        fontWeight: FontWeight.w400,
        wordSpacing: space,
      ),
    ),
  );
}
