import 'package:instagram/features/controllerData/postData.dart';
import 'package:instagram/features/models/profile.dart';

class ProfileData{

  static PostData postData = PostData();
  List<Profile> profileData = [
    Profile(
      profileTitle: 'Gorge_joun',
      profileName: 'Gorge Joun',
      profileImage: 'assets/images/posts/post1/post1.png',
      postImage: 'assets/images/posts/post1/post5.jpg',
      profilePio: 'Hi there i\'m Gorge Joun 33 years old',
      postsNumber: 6,
      followersNumber: 1400,
      followingNumber: 500,
      posts: postData.dataOfPost1,
    ),
    Profile(
      profileTitle: 'Jenifer_roty',
      profileName: 'Jenifer Roty',
      profileImage: 'assets/images/posts/post2/post12.jpg',
      postImage: 'assets/images/posts/post2/post52.jpg',
      profilePio: 'Hi there i\'m Jenifer Roty 23 years old',
      postsNumber: 10,
      followersNumber: 160,
      followingNumber: 50,
      posts: postData.dataOfPost2,
    ),
    Profile(
      profileTitle: 'John_nabil',
      profileName: 'John Nabil',
      profileImage: 'assets/images/posts/post3/post13.jpg',
      postImage: 'assets/images/posts/post3/post53.jpg',
      profilePio: 'Hi there i\'m John Nabil 18 years old',
      postsNumber: 9,
      followersNumber: 1800,
      followingNumber: 530,
      posts: postData.dataOfPost3,
    ),
    Profile(
      profileTitle: 'Mohamed_ali',
      profileName: 'Mohamed Ali',
      profileImage: 'assets/images/posts/post4/post14.jpg',
      postImage: 'assets/images/posts/post4/post54.jpg',
      profilePio: 'Hi there i\'m Mohamed Ali 22 years old',
      postsNumber: 12,
      followersNumber: 200,
      followingNumber: 100,
      posts: postData.dataOfPost4,
    ),
    Profile(
      profileTitle: 'Bill_jets',
      profileName: 'Bill Jets',
      profileImage: 'assets/images/posts/post5/post15.jpg',
      postImage: 'assets/images/posts/post5/post55.jpg',
      profilePio: 'Hi there i\'m Bill Jets 45 years old',
      postsNumber: 1600,
      followersNumber: 4000,
      followingNumber: 900,
      posts: postData.dataOfPost5,
    ),
    Profile(
      profileTitle: 'Raouf_ramez',
      profileName: 'Raouf Ramez',
      profileImage: 'assets/images/posts/post6/post16.jpg',
      postImage: 'assets/images/posts/post6/post56.jpg',
      profilePio: 'Hi there i\'m Raouf Ramez 29 years old',
      postsNumber: 8,
      followersNumber: 98,
      followingNumber: 507,
      posts: postData.dataOfPost6,
    ),
  ];
}