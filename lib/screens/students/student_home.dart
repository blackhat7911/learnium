import 'package:flutter/material.dart';

class SutdentHomeScreen extends StatefulWidget {
  @override
  _SutdentHomeScreenState createState() => _SutdentHomeScreenState();
}

class _SutdentHomeScreenState extends State<SutdentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text(""),
        ),
      ]),
    );
  }
}
