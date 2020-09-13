import 'package:flutter/material.dart';
import '../../constants.dart';

Widget titleList(List _titles){
  return Container(
    height: 38.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _titles.length,
      itemBuilder: (context, index) {
        return Container(
          height: 38.0,
          width: 95.0,
          margin: EdgeInsets.only(left: 8.0, bottom: 10.0),
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
              _titles[index]['title'],
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: KBlackColor,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      },
    ),
  );
}