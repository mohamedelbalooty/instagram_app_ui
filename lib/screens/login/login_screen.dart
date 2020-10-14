import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/home/homeView.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_bottomNavigationBar.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_button.dart';
import 'package:instagram/widgets/authentication_widgets/login_customWidgets/custom_loginDivider.dart';
import 'package:instagram/widgets/authentication_widgets/login_customWidgets/facebook_login.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_logo.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_textField.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/language_status.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/login_details.dart';
import 'loginHelp_screen.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              languageStatus(context),
              SizedBox(
                height: height * 0.11,
              ),
              customLogo(),
              CustomTextField(
                hint: 'Phone number, email or username',
              ),
              CustomTextField(
                hint: 'Password',
                secure: true,
              ),
              customButton(width, 'Log in', context),
              loginDetails(10.0, 'Forgot your login details?',
                  'Get help logging in.', context, LoginHelpScreen.id),
              customLoginDivider(width),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, HomeView.id);
                },
                child: facebookLogin(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: customBottomNavigationBar(width, width,
          'Don\'t have an account?', 'Sign up.', 'SignUpWithFacebook', context),
    );
  }
}
