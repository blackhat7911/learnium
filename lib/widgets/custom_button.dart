import 'package:flutter/material.dart';
import 'package:learnium/utils/constants/constants.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.size,
    this.width,
    this.title,
    this.onTap,
    this.radius,
  }) : super(key: key);

  final Size size;
  final String? title;
  final double? width, radius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 15.0,
        ),
        alignment: Alignment.center,
        child: Text(
          title!,
          style: TextStyle(color: whiteColor, fontSize: 16.0),
        ),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(radius!)),
      ),
    );
  }
}
