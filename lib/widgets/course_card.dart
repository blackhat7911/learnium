import 'package:flutter/material.dart';
import 'package:learnium/constants.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: EdgeInsets.only(
        right: 15.0,
      ),
      child: Column(
        children: [
          Container(
            width: 130,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: inputBoxColor,
            ),
            child: Image.network(
              "https://images.pexels.com/photos/1843679/pexels-photo-1843679.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Django Web Framework",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
