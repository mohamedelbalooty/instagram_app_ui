import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_button.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_textField.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/description_title.dart';
import 'package:instagram/widgets/authentication_widgets/login_customWidgets/custom_loginDivider.dart';
import 'package:instagram/widgets/authentication_widgets/login_customWidgets/facebook_login.dart';

class LoginHelpScreen extends StatelessWidget {
  static String id = 'LoginHelpScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KWhiteColor,
        automaticallyImplyLeading: false,
        elevation: 1.0,
        title: Text(
          'Login Help',
          style: TextStyle(
            color: KBlackColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: height * 0.06,
          ),
          Text(
            'Find Your Account',
            style: TextStyle(
              color: KBlackColor,
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          descriptionTitle(
            'Enter your account or email or phone number linked to your account.',
            EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 15.0),
            14.5,
            1.0,
          ),
          CustomTextField(
            hint: 'Username, email or phone',
          ),
          customButton(width, 'Next', context),
          customLoginDivider(width),
          facebookLogin(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50.0,
        width: width,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Need more help?',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
