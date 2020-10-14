import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'setting_screen.dart';

class PersonSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KWhiteColor,
      appBar: AppBar(
        backgroundColor: KWhiteColor,
        elevation: 2.0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          'PersonScreen',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: KBlackColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _customDetails(Icons.access_time, 'Archive'),
          _customDetails(Icons.alarm, 'Your Activity'),
          _customDetails(Icons.center_focus_weak, 'QR Code'),
          _customDetails(Icons.bookmark_border, 'Saved'),
          _customDetails(Icons.format_list_bulleted, 'Close Friends'),
          _customDetails(Icons.person_add, 'Discover People'),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: KWhiteColor,
          border: Border.all(color: KGreyColor, width: 0.5),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingScreen(),
              ),
            );
          },
          child: _customDetails(Icons.settings, 'Setting'),
        ),
      ),
    );
  }

  Widget _customDetails(IconData icon, title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
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
