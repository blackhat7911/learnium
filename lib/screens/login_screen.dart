import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learnium/screens/lecturer/home_screen.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/screens/splash_screen.dart';
import 'package:learnium/screens/students/student_home.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:learnium/widgets/custom_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = new TextEditingController();
  final passwordController = new TextEditingController();
  bool isChecked = false;
  String dropDownValue = "Student";

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
          "Sign In",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.normal,
            color: blackColor,
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
            SizedBox(
              height: 20.0,
            ),
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
              title: "Password",
              hint: "Password",
              isInvisible: true,
              icon: Icons.lock,
              suffixIcon: Icons.visibility_off,
              controller: passwordController,
            ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Role",
                  style: TextStyle(fontSize: 18.0),
                ),
                Container(
                  width: size.width * 0.9,
                  child: DropdownButton(
                    value: dropDownValue,
                    underline: Container(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownValue = newValue!;
                      });
                    },
                    items: <String>['Student', 'Lecturer']
                        .map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              child: Row(
                children: [
                  Checkbox(
                    activeColor: primaryColor,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text("Show Password")
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            MyButton(
              title: "Sign In",
              width: size.width,
              size: size,
              radius: 10.0,
              onTap: () {
                if (dropDownValue == "Student") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SutdentHomeScreen()));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LecturerHomeScreen()));
                }
              },
            ),
            SizedBox(height: 20.0),
            Text(
              "Forgot Password?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
