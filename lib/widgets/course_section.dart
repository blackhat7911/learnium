import 'package:flutter/material.dart';
import 'package:learnium/widgets/course_card.dart';

class CourseSection extends StatelessWidget {
  final String? title;

  const CourseSection({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 0,),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CourseCard(),
                CourseCard(),
                CourseCard(),
                CourseCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
