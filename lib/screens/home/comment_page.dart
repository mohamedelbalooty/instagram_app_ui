import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/features/controllerData/postData.dart';
import 'package:instagram/features/controllerData/profileData.dart';
import 'package:instagram/features/models/posts.dart';
import 'package:instagram/screens/chat/chat_screen.dart';

class CommentPage extends StatefulWidget {
  static String id = 'CommentPage';

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
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
  int _likeIndex = 1;
  List<Map<String, dynamic>> _dataList = [
    {
      'date': '15m',
      'likes': 6,
      'name': 'Joun',
      'comment': 'Great idea',
      'image': 'assets/images/comments/personComment1.jpeg',
    },
    {
      'date': '35m',
      'likes': 2,
      'name': 'Jenifer',
      'comment': 'Good jop',
      'image': 'assets/images/comments/personComment2.jpeg',
    },
    {
      'date': '1h',
      'likes': 20,
      'name': 'Yach',
      'comment': 'Beautiful',
      'image': 'assets/images/comments/personComment3.jpg',
    },
    {
      'date': '13h',
      'likes': 18,
      'name': 'Michel',
      'comment': 'That is ok',
      'image': 'assets/images/comments/personComment4.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context).settings.arguments;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _commentPageAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: height * 0.1,
              width: width,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: KGreyColor, width: 0.5),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                _profileDataList[index].profileImage),
                            fit: BoxFit.fill),
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.0, color: KBlackColor),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${_profileDataList[index].profileName} ',
                              style: TextStyle(
                                color: KBlackColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Welcome sire',
                              style: TextStyle(
                                color: KBlackColor,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          '20m',
                          style: TextStyle(
                            color: KGreyColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _postDataList[index].comments.length,
              itemBuilder: (context, index) {
                return Container(
                  height: height * 0.1,
                  width: width,
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(_dataList[index]['image']),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(width: 1.0, color: KBlackColor),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '${_dataList[index]['name']} ',
                                  style: TextStyle(
                                    color: KBlackColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  _dataList[index]['comment'],
                                  style: TextStyle(
                                    color: KBlackColor,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  _dataList[index]['date'],
                                  style: TextStyle(
                                    color: KGreyColor,
                                    fontSize: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  '${_dataList[index]['likes']} likes',
                                  style: TextStyle(
                                    color: KGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  'Reply',
                                  style: TextStyle(
                                    color: KGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _likeIndex++;
                            });
                          },
                          child: _likeIndex % 2 == 0
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                  size: 15.0,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  color: KGreyColor,
                                  size: 15.0,
                                ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55.0,
        width: width,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: KGreyColor, width: 0.5),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/placeholder.jpg'),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              SizedBox(
                width: 150.0,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Add a comment...',
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: KGreyColor,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Text(
                'Post',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _commentPageAppBar(context) {
    return AppBar(
      elevation: 2.0,
      titleSpacing: 5.0,
      title: Text(
        'Comments',
        style: TextStyle(
          fontSize: 20.0,
          color: KBlackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          size: 28.0,
          color: KBlackColor,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 13.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/icons/chat.png',
              height: 25.0,
              width: 25.0,
            ),
          ),
        ),
      ],
    );
  }
}
