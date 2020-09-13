import 'package:flutter/material.dart';
import '../constants.dart';

class SharedBottomNavigationBar extends StatelessWidget {
  int currentIndex;
  Function onItemTapped;

  SharedBottomNavigationBar({this.currentIndex, this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: KWhiteColor,
      elevation: 10.0,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: currentIndex == 0
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
          icon: currentIndex == 1
              ? Icon(
                  Icons.search,
                  color: KBlackColor,
                  size: 32.0,
                )
              : Icon(
                  Icons.search,
                  color: KBlackColor,
                  size: 30.0,
                ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 2
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
          icon: currentIndex == 3
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
          icon: currentIndex == 4
              ? Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    color: KWhiteColor,
                    border: Border.all(
                      color: Colors.brown.shade800,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/placeholder.jpg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
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
    );
  }
}
