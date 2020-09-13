import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/screens/signUp/signUp_emailScreen.dart';
import 'package:instagram/screens/signUp/signUp_phoneScreen.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_bottomNavigationBar.dart';
import 'person_logo.dart';

class SignUpOptions extends StatefulWidget {
  @override
  _SignUpOptionsState createState() => _SignUpOptionsState();
}

class _SignUpOptionsState extends State<SignUpOptions>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(width: width),
          personLogo(height),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: TabBar(
              controller: _tabController,
              indicatorColor: KBlackColor,
              labelStyle: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
              labelColor: KBlackColor,
              unselectedLabelColor: KGreyColor,
              unselectedLabelStyle: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
              tabs: <Widget>[
                Container(
                  height: 38.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Phone'.toUpperCase(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 38.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Email'.toUpperCase(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 0.9,
            width: width - 60.0,
            color: KGreyColor,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                SignUpPhoneScreen(),
                SignUpEmailScreen(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: customBottomNavigationBar(width, width,
          'Already have an account?', 'Log in.', 'LoginScreen', context),
    );
  }
}
