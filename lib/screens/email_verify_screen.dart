import 'package:flutter/material.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/screens/profile_setup.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class EmailVerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify Email',
          style: TextStyle(color: blackColor),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: blackColor,
            ),
            onPressed: () {}),
        backgroundColor: whiteColor,
        elevation: 0,
      ),
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
              VerificationCode(
                length: 5,
                underlineColor: primaryColor,
                onCompleted: (code) {},
                onEditing: (bool value) {},
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
                          builder: (context) => ProfileSetUpScreen()));
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
