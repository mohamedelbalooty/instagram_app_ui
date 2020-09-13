import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/features/controllerData/storyData.dart';
import 'package:instagram/features/models/stories.dart';
import 'package:instagram/screens/home/story_page.dart';
import 'add_storyItem.dart';

class StoryList extends StatefulWidget {
  @override
  _StoryListState createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {
  static StoryData _storyData = StoryData();
  List<Story> _storyDataList = _storyData.listOfStoryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: KWhiteColor),
          left: BorderSide(width: 1.0, color: KWhiteColor),
          right: BorderSide(width: 1.0, color: KWhiteColor),
          bottom: BorderSide(width: 0.09, color: KBlackColor),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _storyDataList.length,
        itemBuilder: (context, index) {
          return index == 0 ? addStory() : _storyItem(index);
        },
      ),
    );
  }

  Widget _storyItem(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, StoryPage.id,
                  arguments: _storyDataList[index]);
            },
            child: Container(
              height: 62.0,
              width: 62.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.deepPurple,
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Container(
                height: 38.0,
                width: 38.0,
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: KWhiteColor, width: 2.0),
                  image: DecorationImage(
                    image: AssetImage(
                      _storyDataList[index].profileImage,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              _storyDataList[index].profileTitle,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: KBlackColor,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
