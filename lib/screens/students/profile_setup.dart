import 'package:flutter/material.dart';
import 'package:learnium/screens/students/student_home.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:learnium/widgets/custom_input.dart';

class StudentProfileSetup extends StatefulWidget {
  @override
  _StudentProfileSetupState createState() => _StudentProfileSetupState();
}

class _StudentProfileSetupState extends State<StudentProfileSetup> {
  final usernameController = new TextEditingController();
  final dateController = new TextEditingController();
  final locationController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Setup Your Profile",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomInputBox(
              title: "Fullname",
              hint: "Fullname",
              isInvisible: false,
              icon: Icons.person,
              suffixIcon: null,
              controller: usernameController,
            ),
            SizedBox(height: 20.0),
            CustomInputBox(
              title: "Date of Birth",
              hint: "mm/dd/yyyy",
              isInvisible: false,
              icon: Icons.calendar_today,
              controller: dateController,
            ),
            SizedBox(height: 20.0),
            CustomInputBox(
              title: "Location",
              hint: "Location",
              isInvisible: false,
              icon: Icons.location_pin,
              controller: locationController,
            ),
            SizedBox(height: 20.0),
            MyButton(
              title: "Save and Continue",
              width: size.width,
              size: size,
              radius: 10.0,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SutdentHomeScreen()));
              },
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
