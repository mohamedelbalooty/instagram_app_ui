import 'package:flutter/material.dart';
import 'package:instagram/widgets/home_widgets/home_appBar.dart';
import 'package:instagram/widgets/home_widgets/post_widgets/post_list.dart';
import 'package:instagram/widgets/home_widgets/story_widgets/story_list.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  File _image;
  final picker = ImagePicker();

  Future getImage() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context, getImage),
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

