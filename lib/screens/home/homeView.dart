import 'package:flutter/material.dart';
import 'package:instagram/screens/add/add_screen.dart';
import 'package:instagram/screens/favourite/favourite_screen.dart';
import 'package:instagram/screens/home/home_screen.dart';
import 'package:instagram/screens/person/person_screen.dart';
import 'package:instagram/screens/search/search_screen.dart';
import 'package:instagram/widgets/shared_bottomNavigationBar.dart';

class HomeView extends StatefulWidget {
  static String id = 'HomeView';
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    FavouriteScreen(),
    PersonScreen(),
  ];
  int _currentIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: SharedBottomNavigationBar(
        currentIndex: _currentIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
