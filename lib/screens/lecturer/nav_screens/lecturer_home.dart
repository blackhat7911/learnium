import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learnium/screens/lecturer/upload_screen.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/models/courses.dart';
import 'package:learnium/widgets/course_section.dart';

class LecturerHomeNavScreen extends StatefulWidget {
  const LecturerHomeNavScreen({Key? key}) : super(key: key);

  @override
  _LecturerHomeNavScreenState createState() => _LecturerHomeNavScreenState();
}

class _LecturerHomeNavScreenState extends State<LecturerHomeNavScreen> {
  final course = Courses.fetchAll();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              Row(
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                      color: primaryColor,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.file_upload,
                      color: blackColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadScreen()));
                    },
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "My Courses",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    width: size.width * 0.95,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Image(
                              image: NetworkImage(
                                  "https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg")),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Introduction To Flutter",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        ),
                        Text("Published 27th aug 2021",
                            style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
