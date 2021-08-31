import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learnium/screens/students/screens/downloads_screen.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/models/courses.dart';
import 'package:learnium/screens/students/screens/home.dart';
import 'package:learnium/widgets/custom_button.dart';

class CourseDetailScreen extends StatefulWidget {
  late final Courses? course;

  CourseDetailScreen(this.course);

  @override
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  String buttonText = "Enroll To Course";
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.3,
                    child: Stack(
                      children: [
                        Container(
                          width: size.width,
                          height: size.height,
                          child: Image.network(
                            widget.course!.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: IconButton(
                              alignment: Alignment.center,
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: whiteColor,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LearnerHomeScreen()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    width: size.width,
                    height: size.height * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: Image.network(
                                  widget.course!.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              widget.course!.name,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Author",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          widget.course!.author,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          widget.course!.description,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          "Rating",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RatingBarIndicator(
                            itemCount: 5,
                            rating: widget.course!.rating,
                            itemBuilder: (context, index) {
                              return Icon(
                                Icons.star,
                                color: Colors.amber,
                              );
                            }),
                        SizedBox(height: 20.0),
                        Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          "NPR.${widget.course!.price}",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Visibility(
                            visible: isVisible,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Course Content",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 20.0),
                                VideoCard(
                                  size: size,
                                  thumbnailUrl:
                                      "https://www.reginaldchan.net/wp-content/uploads/2021/05/What-is-Flutter-App-Development.png",
                                  title: "Introduction to Flutter",
                                  duration: "5:00",
                                  author: "Reso Coder",
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PositionedButton(
              size: size,
              buttonText: buttonText,
              onPressed: () {
                setState(() {
                  buttonText = "Enrolled";
                  isVisible = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PositionedButton extends StatelessWidget {
  const PositionedButton({
    Key? key,
    required this.size,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final Size size;
  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 5,
      right: 5,
      child: Container(
        width: size.width,
        child: MyButton(
          size: size,
          title: buttonText,
          onTap: () {
            onPressed();
          },
          width: size.width * 0.9,
          radius: 14,
        ),
      ),
    );
  }
}
