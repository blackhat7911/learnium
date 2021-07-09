import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learnium/constants.dart';
import 'package:learnium/screens/email_verify_screen.dart';
import 'package:learnium/screens/splash_screen.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:learnium/widgets/custom_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameController = new TextEditingController();
  final passwordController = new TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: blackColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SplashScreen()));
          },
        ),
        title: Text(
          "Register",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.normal,
            color: primaryColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: whiteColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            CustomInputBox(
              title: "Username",
              hint: "Username",
              isInvisible: false,
              icon: Icons.person,
              suffixIcon: null,
              controller: usernameController,
            ),
            SizedBox(height: 20.0),
            CustomInputBox(
              title: "Email",
              hint: "Email",
              isInvisible: false,
              icon: Icons.mail,
              suffixIcon: null,
              controller: usernameController,
            ),
            SizedBox(height: 20.0),
            CustomInputBox(
              title: "Password",
              hint: "Password",
              isInvisible: true,
              icon: Icons.lock,
              suffixIcon: Icons.visibility_off,
              controller: passwordController,
            ),
            SizedBox(height: 20.0),
            CustomInputBox(
              title: "Confirm Password",
              hint: "Confirm Password",
              isInvisible: true,
              icon: Icons.lock,
              suffixIcon: Icons.visibility_off,
              controller: passwordController,
            ),
            SizedBox(height: 20.0),
            MyButton(
              title: "Sign In",
              width: size.width,
              size: size,
              radius: 10.0,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmailVerifyScreen()));
              },
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
