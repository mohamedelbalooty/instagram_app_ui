import 'package:flutter/cupertino.dart';
import 'package:instagram/features/models/posts.dart';

class Profile {
  String profileTitle, profileName, profileImage, postImage, profilePio;
  int postsNumber, followersNumber, followingNumber;
  List<Post> posts;

  Profile({
    @required this.profileTitle,
    @required this.profileName,
    @required this.profileImage,
    @required this.postImage,
    @required this.profilePio,
    @required this.postsNumber,
    @required this.followersNumber,
    @required this.followingNumber,
    @required this.posts,
  });
}
//وانا بعمل اوبجكت منه هعمل اوجكتس من الكلاسات التانية واسويهم
