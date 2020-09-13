import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/features/models/profile.dart';
import 'package:instagram/widgets/home_widgets/profile_widgets/profile_appBar.dart';
import 'package:instagram/widgets/home_widgets/profile_widgets/profile_buttons.dart';
import 'package:instagram/widgets/home_widgets/profile_widgets/profile_info.dart';
import 'package:instagram/widgets/home_widgets/profile_widgets/profile_numberDetails.dart';

class ProfileScreen extends StatefulWidget {
  static String id = 'ProfileScreen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Profile _profileData = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: profileAppBar(_profileData.profileTitle),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: width,
          ),
          profileNumberDetails(
              height,
              width,
              _profileData.profileImage,
              _profileData.postsNumber.toString(),
              _profileData.followersNumber.toString(),
              _profileData.followingNumber.toString()),
          profileInfo(_profileData.profileName, _profileData.profileTitle,
              _profileData.followersNumber.toString()),
          SizedBox(
            height: 5.0,
          ),
          profileButtons(),
          TabBar(
            controller: _tabController,
            indicatorColor: KBlackColor,
            isScrollable: true,
            unselectedLabelColor: KGreyColor,
            labelColor: KBlackColor,
            labelPadding: EdgeInsets.symmetric(horizontal: (width / 5)+2),
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
                      crossAxisCount: 2),
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      height: (width / 2) - 5,
                      width: (width / 2) - 5,
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              ExactAssetImage(_profileData.posts[index].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      height: (width / 2) - 5,
                      width: (width / 2) - 5,
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/empty.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: KWhiteColor,
        elevation: 10.0,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          _currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Icon(
              Icons.home,
              color: KBlackColor,
              size: 35.0,
            )
                : Image.asset(
              'assets/images/icons/home.png',
              width: 28.0,
              height: 28.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Icon(
              Icons.search,
              color: KBlackColor,
              size: 32.0,
            )
                : Icon(
              Icons.search,
              color: KBlackColor,
              size: 31.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? Image.asset(
              'assets/images/icons/add.png',
              width: 32.0,
              height: 32.0,
            )
                : Image.asset(
              'assets/images/icons/add.png',
              width: 31.0,
              height: 31.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? Icon(
              Icons.favorite,
              color: KBlackColor,
              size: 30.0,
            )
                : Icon(
              Icons.favorite_border,
              color: KBlackColor,
              size: 30.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 4
                ? CircleAvatar(
              radius: 16.0,
              backgroundImage: AssetImage(
                'assets/images/placeholder.jpg',
              ),
            )
                : CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage(
                'assets/images/placeholder.jpg',
              ),
            ),
            title: Container(),
          ),
        ],
      ),
    );
  }
}
