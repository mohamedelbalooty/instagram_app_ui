import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/features/models/stories.dart';
import 'homeView.dart';

class StoryPage extends StatefulWidget {
  static String id = 'StoryPage';

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomeView.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Story _storyDetails = ModalRoute.of(context).settings.arguments;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(_storyDetails.profileImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 1.5,
              width: width,
              margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
              color: Colors.white70,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(_storyDetails.profileImage),
                    radius: 16.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    _storyDetails.profileTitle,
                    style: TextStyle(
                      color: KWhiteColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    _storyDetails.hoursNumbers,
                    style: TextStyle(
                      color: KGreyColor,
                      fontSize: 16.0,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: KWhiteColor,
                      size: 25,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  hintText: 'Send message',
                  hintStyle: TextStyle(
                    color: KWhiteColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      width: 0.8,
                      color: Colors.white70,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      width: 0.8,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
