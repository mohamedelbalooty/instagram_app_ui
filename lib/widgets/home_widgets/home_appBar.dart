import 'package:flutter/material.dart';
import 'package:instagram/screens/chat/chat_screen.dart';
import '../../constants.dart';

Widget homeAppBar(context, Function onClick) {
  return AppBar(
    backgroundColor: KWhiteColor,
    elevation: 2.0,
    titleSpacing: 0,
    leading: Padding(
      padding: EdgeInsets.symmetric(vertical: 13.0),
      child: InkWell(
        onTap: onClick,
        child: Image.asset(
          'assets/images/icons/camera.png',
          height: 20.0,
          width: 20.0,
        ),
      ),
    ),
    centerTitle: false,
    title: Text(
      'Instagram',
      style: TextStyle(
        color: KBlackColor,
        fontSize: 22.0,
        fontFamily: 'Lobster',
      ),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 13.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(),
              ),
            );
          },
          child: Image.asset(
            'assets/images/icons/chat.png',
            height: 25.0,
            width: 25.0,
          ),
        ),
      ),
    ],
  );
}
