import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/widgets/add_widgets/add_appBar.dart';
import 'package:instagram/widgets/search_widgets/search_appBar.dart';
import 'package:instagram/widgets/search_widgets/title_list.dart';

class AddScreen extends StatelessWidget {
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
      appBar: addAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
      height: height * 0.5,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 1.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/placeholder.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.4),
              ),
              child: Icon(
                Icons.unfold_more,
                size: 25.0,
                color: KWhiteColor,
              ),
            ),
            Expanded(child: SizedBox(),),
            Container(
              height: 40.0,
              width: 40.0,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.4),
              ),
              child: Icon(
                Icons.all_inclusive,
                size: 24.0,
                color: KWhiteColor,
              ),
            ),
            Container(
              height: 40.0,
              width: 40.0,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.4),
              ),
              child: Icon(
                Icons.border_all,
                size: 20.0,
                color: KWhiteColor,
              ),
            ),
            Container(
              height: 40.0,
              width: width*0.4,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.content_copy,
                    size: 20.0,
                    color: KWhiteColor,
                  ),
                  SizedBox(width: 4.0,),
                  Text('select Multiple'.toUpperCase(), style: TextStyle(
                    color: KWhiteColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
