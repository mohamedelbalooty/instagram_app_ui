import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/widgets/search_widgets/search_appBar.dart';
import 'package:instagram/widgets/search_widgets/title_list.dart';

class SearchScreen extends StatelessWidget {
  List<Map<String, String>> _titles = [
    {
      'title': 'IGTV',
    },
    {
      'title': 'Shop',
    },
    {
      'title': 'Travel',
    },
    {
      'title': 'Architecture',
    },
  ];
  List<String> _imagesList = [
    'assets/images/search/1.jpg',
    'assets/images/search/2.jpg',
    'assets/images/search/3.jpeg',
    'assets/images/search/4.jpg',
    'assets/images/search/5.jpg',
    'assets/images/search/6.jpg',
    'assets/images/search/7.jpg',
    'assets/images/search/8.jpg',
    'assets/images/search/9.jpg',
    'assets/images/search/10.jpg',
    'assets/images/search/11.jpg',
    'assets/images/search/12.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhiteColor,
      appBar: searchAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            titleList(_titles),
            _customContainer(height, width),
            GridView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                scrollDirection: Axis.vertical,
                itemCount: 12,
                itemBuilder: (context, index){
                  return Container(
                    height: height / 3,
                    width: width / 3,
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(_imagesList[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }

  Widget _customContainer(height, width) {
    return Container(
      height: height * 0.6,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 1.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/search/nature.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.ondemand_video,
              size: 35.0,
              color: KWhiteColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 18.0),
            child: Text(
              'Reels',
              style: TextStyle(
                color: KWhiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
