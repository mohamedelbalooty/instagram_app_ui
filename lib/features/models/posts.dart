import 'package:flutter/cupertino.dart';

class Post{
  String title, image, date;
  int likeNumbers , commentsNumbers;
  List<String> comments;
  Post({
    @required this.title,
    @required this.image,
    @required this.date,
    @required this.likeNumbers,
    @required this.commentsNumbers,
    @required this.comments,
  });
}