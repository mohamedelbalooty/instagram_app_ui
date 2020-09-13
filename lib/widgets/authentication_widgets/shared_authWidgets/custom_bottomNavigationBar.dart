import 'package:flutter/material.dart';
import 'package:instagram/widgets/authentication_widgets/login_customWidgets/custom_loginDivider.dart';

import 'login_details.dart';

Widget customBottomNavigationBar(double width, double dividerWidth,
    String text, String detail, String screen, context) {
  return Container(
    height: 50.0,
    width: width,
    child: Column(
      children: <Widget>[
        sharedDivider(dividerWidth),
        loginDetails(17.0, text, detail, context, screen),
      ],
    ),
  );
}
