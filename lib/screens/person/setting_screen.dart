import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KWhiteColor,
        elevation: 2.0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: KBlackColor,
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        title: Text(
          'Setting',
          style: TextStyle(
            color: KBlackColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: KBlackColor, width: 1.0),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                      color: KGreyColor,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 28.0,
                      color: KGreyColor,
                    ),
                  ),
                ),
              ),
              _customDetails(Icons.person_add, 'Follow and Invite Friend'),
              _customDetails(Icons.notifications, 'Notifications'),
              _customDetails(Icons.lock_outline, 'Privacy'),
              _customDetails(Icons.security, 'Security'),
              _customDetails(Icons.hearing, 'Ads'),
              _customDetails(Icons.payment, 'Payments'),
              _customDetails(Icons.person_pin, 'Account'),
              _customDetails(Icons.help_outline, 'Help'),
              _customDetails(Icons.info_outline, 'About'),
              _customDetails(Icons.palette, 'Theme'),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Switch to Professional Account',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Logins',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: KBlackColor,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Set up Multi-Account Login',
                style: TextStyle(
                  fontSize: 17.0,
                  color: KGreyColor,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Add Account',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 1.0,
                width: double.infinity,
                color: Colors.grey.shade400,
                margin: EdgeInsets.symmetric(vertical: 20.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'from',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: KGreyColor,
                    ),
                  ),
                  Text(
                    'Facebook'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: KBlackColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0,),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customDetails(IconData icon, title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            size: 30.0,
            color: KBlackColor,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: KBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}
