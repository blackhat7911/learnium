import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:learnium/constants.dart';
import 'package:learnium/screens/students/screens/explore.dart';
import 'package:learnium/screens/students/screens/home.dart';
import 'package:learnium/screens/students/screens/notifications.dart';
import 'package:learnium/screens/students/screens/profile.dart';

class SutdentHomeScreen extends StatefulWidget {
  @override
  _SutdentHomeScreenState createState() => _SutdentHomeScreenState();
}

class _SutdentHomeScreenState extends State<SutdentHomeScreen> {
  int selectedIndex = 0;

  static const List<Widget> _widgets = [
    LearnerHomeScreen(),
    ExploreScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgets.elementAt(selectedIndex),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        currentIndex: selectedIndex,
        elevation: 1,
        snakeViewColor: primaryColor,
        snakeShape: SnakeShape.indicator,
        backgroundColor: whiteColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: blackColor,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
