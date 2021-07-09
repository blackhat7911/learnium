import 'package:flutter/material.dart';
import 'package:learnium/constants.dart';
import 'package:learnium/screens/students/profile_setup.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:learnium/widgets/number_input_box.dart';

class EmailVerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Verify Your Email",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 32.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "We've sent 5-digit code to your email. Please check and verify your email here.",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumberInputBox(),
                    SizedBox(
                      width: 10.0,
                    ),
                    NumberInputBox(),
                    SizedBox(
                      width: 10.0,
                    ),
                    NumberInputBox(),
                    SizedBox(
                      width: 10.0,
                    ),
                    NumberInputBox(),
                    SizedBox(
                      width: 10.0,
                    ),
                    NumberInputBox(),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              MyButton(
                title: "Verify Email",
                width: size.width,
                size: size,
                radius: 10.0,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentProfileSetup()));
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RichText(
                text: TextSpan(
                    text: "Didn't receive code? ",
                    style: TextStyle(color: blackColor),
                    children: [
                      TextSpan(
                          text: "Resend",
                          style: TextStyle(color: primaryColor)),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
