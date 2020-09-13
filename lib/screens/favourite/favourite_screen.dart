import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';

class FavouriteScreen extends StatelessWidget {
  List<Map<String, dynamic>> _listDetails1 = [
    {
      'image': 'assets/images/posts/post1/post3.jpg',
      'name': 'Hy Motomax, Sa3dawy garage. 5d',
    },
    {
      'image': 'assets/images/posts/post1/post5.jpg',
      'name': 'Omar Dizer, Python Learning. 6d',
    },
  ];
  List<Map<String, dynamic>> _listDetails2 = [
    {
      'image': 'assets/images/posts/post2/post22.jpg',
      'name': 'Tayam Amar, Sa3dawy garage. 1w',
    },
    {
      'image': 'assets/images/posts/post2/post42.jpg',
      'name': 'Omar Dizer, Flutter Learning. 1w',
    },
    {
      'image': 'assets/images/posts/post3/post53.jpg',
      'name': 'Amar Dizer, Java Learning. 2w',
    },
    {
      'image': 'assets/images/posts/post3/post63.jpg',
      'name': 'Tayam Omar, Dart Learning. 4w',
    },
    {
      'image': 'assets/images/posts/post1/post2.jpg',
      'name': 'Omar Dizer, Python Learning. 5w',
    },
    {
      'image': 'assets/images/posts/post1/post4.jpg',
      'name': 'Hy Motomax, Sa3dawy garage. 5w',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: KWhiteColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Activity',
          style: TextStyle(
            color: KBlackColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Text(
                'This Week',
                style: TextStyle(
                  color: KBlackColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: height * 0.28,
              width: width,
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _listDetails1.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage:
                              AssetImage(_listDetails1[index]['image']),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        SizedBox(
                          width: width * 0.50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Follow ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: KBlackColor,
                                ),
                                maxLines: 3,
                              ),
                              SizedBox(height: 5.0,),
                              Text(
                                _listDetails1[index]['name'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: KBlackColor,
                                ),
                                maxLines: 3,

                              ),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox(),),
                        _followButton(index),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: Text(
                'This Month',
                style: TextStyle(
                  color: KBlackColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: _listDetails2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage:
                          AssetImage(_listDetails2[index]['image']),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        SizedBox(
                          width: width * 0.50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Follow ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: KBlackColor,
                                ),
                                maxLines: 3,
                              ),
                              SizedBox(height: 5.0,),
                              Text(
                                _listDetails2[index]['name'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: KBlackColor,
                                ),
                                maxLines: 3,

                              ),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox(),),
                        _followButton(index),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _followButton(index){
    return Container(
      height: 30.0,
      width: 70.0,
      decoration: BoxDecoration(
        color: index % 2 == 0 ? Colors.blue : KWhiteColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: Text(
          'Follow',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: KWhiteColor,
          ),
        ),
      ),
    );
  }
}
