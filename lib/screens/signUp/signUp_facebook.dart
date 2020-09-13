import 'package:flutter/material.dart';
import 'package:instagram/screens/login/login_screen.dart';
import 'package:instagram/screens/signUp/signUp_emailScreen.dart';
import 'package:instagram/widgets/authentication_widgets/login_customWidgets/custom_loginDivider.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_bottomNavigationBar.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_logo.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/login_details.dart';
import 'package:instagram/widgets/authentication_widgets/signup_customWidgets/custom_signupDivider.dart';
import 'package:instagram/widgets/authentication_widgets/signup_customWidgets/facebook_button.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/language_status.dart';
import 'package:instagram/widgets/authentication_widgets/signup_customWidgets/signup_options.dart';

import 'signUp_phoneScreen.dart';

class SignUpWithFacebook extends StatelessWidget {
  static String id = 'SignUpWithFacebook';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            languageStatus(context),
            SizedBox(
              height: height * 0.17,
            ),
            customLogo(),
            facebookButton(width, height, context),
            customSignupDivider(width),
            _signUpButton(context),
          ],
        ),
      ),
      bottomNavigationBar: customBottomNavigationBar(width, width,
        'Already have an account?', 'Log in.', 'LoginScreen', context),
    );
  }

  Widget _signUpButton(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpOptions()));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Text(
          'Sign up with email or phone number',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
