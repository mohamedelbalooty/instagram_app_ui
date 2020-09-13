import 'package:flutter/material.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_button.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_textField.dart';

class SignUpEmailScreen extends StatelessWidget {
  static String id = 'SignUpEmailScreen';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 7.0),
          child: CustomTextField(
            hint: 'Email',
          ),
        ),
        customButton(width, 'Next', context),
      ],
    );
  }
}
