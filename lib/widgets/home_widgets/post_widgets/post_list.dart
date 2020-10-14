import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/features/controllerData/postData.dart';
import 'package:instagram/features/controllerData/profileData.dart';
import 'package:instagram/features/models/posts.dart';
import 'post_bar.dart';
import 'post_iconBar.dart';
import 'post_image.dart';
import 'post_likesAndComment.dart';

class PostList extends StatelessWidget {
  static ProfileData _profileData = ProfileData();
  List _profileDataList = _profileData.profileData;
  static PostData _postData = PostData();
  List<Post> _postDataList = [
    _postData.dataOfPost1[0],
    _postData.dataOfPost2[1],
    _postData.dataOfPost3[2],
    _postData.dataOfPost4[3],
    _postData.dataOfPost5[4],
    _postData.dataOfPost6[5],
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: _profileDataList.length,
      itemBuilder: (context, index) {
        return _postItem(index, height, width);
      },
    );
  }

  Widget _postItem(index, height, width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PostBar(index: index),
        postImage(height, width, _profileDataList[index].postImage),
        PostIconBar(index: index,),
        postLikeAndComment(
            _postDataList[index].likeNumbers.toString(),
            _postDataList[index].comments[0],
            _profileDataList[index].profileName,
            _postDataList[index].commentsNumbers.toString(),
            _profileDataList[index].profileImage,
            _postDataList[index].date)
      ],
    );
  }
}
