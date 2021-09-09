import 'package:flutter/material.dart';
import 'package:learnium/screens/lecturer/home_screen.dart';
import 'package:learnium/screens/students/student_home.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:learnium/widgets/custom_input.dart';

class PaymentSetupScreen extends StatefulWidget {
  const PaymentSetupScreen({Key? key, required this.userType})
      : super(key: key);
  final String userType;

  @override
  _PaymentSetupScreenState createState() =>
      _PaymentSetupScreenState(this.userType);
}

class _PaymentSetupScreenState extends State<PaymentSetupScreen> {
  _PaymentSetupScreenState(this.userType);
  final String userType;
  TextEditingController nameController = TextEditingController();
  TextEditingController numController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: blackColor,
            ),
            onPressed: () {}),
        title: Text(
          "Setup Payment",
          style: TextStyle(color: blackColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/147/147258.png",
              ),
              height: 300,
              width: size.width,
            ),
            SizedBox(height: 10),
            Text(
              "Enter your card details",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              width: size.width * 0.9,
              child: CustomInputBox(
                title: "Card Holder name",
                hint: "e.g. John Doe",
                icon: Icons.person,
                controller: nameController,
                // error: "Please enter your name",
                isInvisible: false,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: size.width * 0.9,
              child: CustomInputBox(
                title: "Card number",
                hint: "e.g. 12345XXXX",
                icon: Icons.credit_card,
                controller: numController,
                // error: "Please enter your name",
                isInvisible: false,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: size.width * 0.9,
              child: CustomInputBox(
                title: "Expiry Date",
                hint: "e.g. 01/12",
                icon: Icons.person,
                controller: dateController,
                // error: "Please enter your name",
                isInvisible: false,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: size.width * 0.9,
              child: CustomInputBox(
                title: "Security Code",
                hint: "e.g. 1234",
                icon: Icons.person,
                controller: codeController,
                // error: "Please enter your name",
                isInvisible: false,
              ),
            ),
            SizedBox(height: 10),
            MyButton(
              size: size,
              title: "Save",
              radius: 10,
              width: size.width * 0.9,
              onTap: () {
                if (userType == "Student") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SutdentHomeScreen()));
                } else if (userType == "Lecturer") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LecturerHomeScreen()));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
