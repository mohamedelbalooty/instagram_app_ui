import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/widgets/home_widgets/profile_widgets/profile_info.dart';
import 'package:instagram/widgets/person_widgets/person_appBar.dart';
import 'package:instagram/widgets/person_widgets/person_putton.dart';

import 'person_settingScreen.dart';

class PersonScreen extends StatefulWidget {
  @override
  _PersonScreenState createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

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
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: Drawer(
        child: PersonSettingScreen(),
      ),
      appBar: personAppBar(context),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: width,
                ),
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 44.0,
                      backgroundImage: AssetImage(
                        'assets/images/placeholder.jpg',
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 18.0,
                        width: 18.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: KWhiteColor, width: 1.5),
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: KWhiteColor,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          profileInfo('Person Screen', 'Person_screen', '1570'),
          SizedBox(
            height: 20.0,
          ),
          personButton(width),
          SizedBox(
            height: 20.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: KBlackColor,
            isScrollable: true,
            unselectedLabelColor: KGreyColor,
            labelColor: KBlackColor,
            labelPadding: EdgeInsets.symmetric(horizontal: (width / 5) + 2),
            tabs: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.grid_on,
                  size: 30.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Icon(
                  Icons.person_outline,
                  size: 30.0,
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  scrollDirection: Axis.vertical,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Container(
                      height: (width / 2) - 5,
                      width: (width / 2) - 5,
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage(_imagesList[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
                Container(
                  height: (width / 2) - 5,
                  width: (width / 2) - 5,
                  margin: EdgeInsets.all(2.0),
                  child: Center(
                    child: Icon(
                      Icons.refresh,
                      size: 50.0,
                      color: KBlackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
