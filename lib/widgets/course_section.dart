import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learnium/models/courses.dart';
import 'package:learnium/screens/students/course_detail_screen.dart';
import 'package:learnium/widgets/course_card.dart';

class CourseSection extends StatelessWidget {
  final String? title;
  final List<Courses>? course;

  const CourseSection({
    Key? key,
    this.title,
    this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        right: 0,
      ),
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
          Container(
            width: size.width,
            height: size.height * 0.28,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: course!.length,
              itemBuilder: (context, index) {
                return CourseCard(
                  name: course![index].name,
                  imageUrl: course![index].imageUrl,
                  price: course![index].price,
                  author: course![index].author,
                  rating: course![index].rating,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CourseDetailScreen(course![index])));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
