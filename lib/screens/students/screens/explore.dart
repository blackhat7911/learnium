import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/models/courses.dart';
import 'package:learnium/widgets/course_section.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final courses = Courses.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Container(
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
              "Explore",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: inputBoxColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Column(
              children: [
                CourseSection(
                  title: "Recommended For You",
                  course: courses,
                ),
                CourseSection(
                  title: "Popular",
                  course: courses,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
