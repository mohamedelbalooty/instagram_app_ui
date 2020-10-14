import 'package:flutter/material.dart';
import 'package:instagram/screens/home/homeView.dart';
import 'package:instagram/screens/home/home_screen.dart';
import 'package:instagram/screens/login/loginHelp_screen.dart';
import 'package:instagram/screens/login/login_screen.dart';
import 'package:instagram/screens/profile/profile_screen.dart';
import 'package:instagram/screens/signUp/signUp_emailScreen.dart';
import 'package:instagram/screens/signUp/signUp_facebook.dart';
import 'package:instagram/screens/signUp/signUp_phoneScreen.dart';
import 'screens/home/comment_page.dart';
import 'screens/home/story_page.dart';
import 'screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        LoginHelpScreen.id: (context) => LoginHelpScreen(),
        SignUpWithFacebook.id: (context) => SignUpWithFacebook(),
        SignUpPhoneScreen.id: (context) => SignUpPhoneScreen(),
        SignUpEmailScreen.id: (context) => SignUpEmailScreen(),
        HomeView.id: (context) => HomeView(),
        HomeScreen.id: (context) => HomeScreen(),
        StoryPage.id: (context) => StoryPage(),
        ProfileScreen.id: (context) => ProfileScreen(),
        CommentPage.id: (context) => CommentPage(),
      },
    );
  }
}
