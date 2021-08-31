import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/models/courses.dart';
import 'package:learnium/widgets/course_section.dart';

class LearnerHomeScreen extends StatefulWidget {
  const LearnerHomeScreen({Key? key}) : super(key: key);

  @override
  _LearnerHomeScreenState createState() => _LearnerHomeScreenState();
}

class _LearnerHomeScreenState extends State<LearnerHomeScreen> {
  final course = Courses.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Home",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                  color: primaryColor,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CourseSection(
                title: "My Learning",
                course: course,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
