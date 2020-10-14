import 'package:flutter/material.dart';
import 'package:instagram/features/models/posts.dart';
import 'package:instagram/features/models/profile.dart';
import 'package:instagram/screens/home/comment_page.dart';

class PostIconBar extends StatefulWidget {

  int index;
  PostIconBar({this.index});
  @override
  _PostIconBarState createState() => _PostIconBarState();
}

class _PostIconBarState extends State<PostIconBar> {
  int _likeIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        children: <Widget>[
          InkWell(
              onTap: () {
                setState(() {
                  _likeIndex++;
                });
              },
              child: _likeIndex % 2 == 0 ?
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Icon(Icons.favorite, size: 28.0, color: Colors.red,),
              ) :
              Image.asset(
                'assets/images/icons/favourite.png',
                height: 36.0,
                width: 36.0,
              ),
          ),
          SizedBox(
            width: 8.0,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, CommentPage.id, arguments: widget.index);
            },
            child: Image.asset(
              'assets/images/icons/comment.png',
              height: 22.0,
              width: 22.0,
            ),
          ),
          SizedBox(
            width: 13.0,
          ),
          Image.asset(
            'assets/images/icons/chat.png',
            height: 22.0,
            width: 22.0,
          ),
          Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            'assets/images/icons/save.png',
            height: 38.0,
            width: 38.0,
          ),
        ],
      ),
    );
  }
}
