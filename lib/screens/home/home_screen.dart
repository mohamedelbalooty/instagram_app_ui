import 'package:flutter/material.dart';
import 'package:instagram/widgets/home_widgets/home_appBar.dart';
import 'package:instagram/widgets/home_widgets/post_widgets/post_list.dart';
import 'package:instagram/widgets/home_widgets/story_widgets/story_list.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StoryList(),
            PostList(),
          ],
        ),
      ),
    );
  }
}

