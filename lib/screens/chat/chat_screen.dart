import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/features/controllerData/storyData.dart';
import 'package:instagram/features/models/stories.dart';
import 'package:instagram/widgets/chat_widgets/chat_appBar.dart';
import 'package:instagram/widgets/chat_widgets/chat_textField.dart';

class ChatScreen extends StatelessWidget {
  static StoryData _storyData = StoryData();
  List<Story> _storyDataList = _storyData.listOfStoryData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            chatTextField(),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 15.0),
              child: Text(
                'Messages',
                style: TextStyle(
                  color: KBlackColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: _storyDataList.length,
              itemBuilder: (context, index) {
                return _chatItemOfList(index);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.height,
        height: 50.0,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.5,
              color: KGreyColor,
            ),
            bottom: BorderSide(
              width: 0.5,
              color: KWhiteColor,
            ),
            right: BorderSide(
              width: 0.5,
              color: KWhiteColor,
            ),
            left: BorderSide(
              width: 0.5,
              color: KWhiteColor,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/icons/instagramCamera.png',
              height: 35.0,
              width: 35.0,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'Camera',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chatItemOfList(index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 26.0,
            backgroundImage: AssetImage(_storyDataList[index].storyImage),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _storyDataList[index].profileTitle,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: KBlackColor,
                  ),
                ),
                Text(
                  'Active ${_storyDataList[index].hoursNumbers} ago',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: KGreyColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            'assets/images/icons/greyCamera.png',
            height: 31.0,
            width: 31.0,
          ),
        ],
      ),
    );
  }
}
