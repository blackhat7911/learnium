import 'package:flutter/material.dart';
import 'package:learnium/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learnium',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),     
    );
  }
}
