import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:learnium/screens/lecturer/nav_screens/withdraw_screen.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/screens/students/screens/notifications.dart';
import 'package:learnium/screens/students/screens/profile.dart';
import 'package:learnium/screens/lecturer/nav_screens/lecturer_home.dart';

class LecturerHomeScreen extends StatefulWidget {
  final String userType;
  const LecturerHomeScreen({Key? key, required this.userType})
      : super(key: key);
  @override
  _LecturerHomeScreenState createState() => _LecturerHomeScreenState();
}

class _LecturerHomeScreenState extends State<LecturerHomeScreen> {
  int selectedIndex = 0;

  static const List<Widget> _widgets = [
    LecturerHomeNavScreen(),
    WithdrawScreen(),
    NotificationScreen(),
    ProfileScreen(userType: 'lecturer'),
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
            icon: Icon(Icons.money),
            label: 'Withdraw',
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
