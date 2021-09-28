import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:learnium/screens/email_verify_screen.dart';
import 'package:learnium/screens/lecturer/home_screen.dart';
import 'package:learnium/screens/payment_setup_screen.dart';
import 'package:learnium/screens/students/student_home.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:learnium/widgets/custom_input.dart';
import '../utils/constants/constants.dart';
// import 'package:image_picker/image_picker.dart';

class ProfileSetUpScreen extends StatefulWidget {
  const ProfileSetUpScreen({Key? key}) : super(key: key);

  @override
  _ProfileSetUpScreenState createState() => _ProfileSetUpScreenState();
}

class _ProfileSetUpScreenState extends State<ProfileSetUpScreen> {
  File? _pickedImage;

  // final _imagePicker = ImagePicker();
  final fullnameController = new TextEditingController();
  final addressController = new TextEditingController();
  final dateController = new TextEditingController();
  final occupationController = new TextEditingController();
  String dropDownValue = "Student";

  // Future pickPhoto(ImageSource source) async {
  //   final _pickImage = await _imagePicker.pickImage(source: source);
  //   setState(() {
  //     _pickedImage = File(_pickImage!.path);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: blackColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EmailVerifyScreen()));
          },
        ),
        centerTitle: true,
        title: Text(
          'Setup Your Profile',
          style: TextStyle(
            color: blackColor,
          ),
        ),
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
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return new Container(
                      height: 200,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Select One",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        // pickPhoto(ImageSource.camera);
                                      },
                                      icon: Icon(
                                        Icons.camera_alt,
                                      ),
                                      iconSize: 50.0,
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: size.width,
                                      alignment: Alignment.center,
                                      child: Text("Camera"),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        // pickPhoto(ImageSource.gallery);
                                      },
                                      icon: Icon(
                                        Icons.photo_album_outlined,
                                      ),
                                      iconSize: 50.0,
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: size.width,
                                      alignment: Alignment.center,
                                      child: Text("Gallery"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: (_pickedImage == null)
                  ? CircleAvatar(
                      radius: 60,
                      backgroundColor: inputBoxColor,
                      child: _pickedImage == null
                          ? Icon(
                              Icons.person,
                              size: 60,
                              color: blackColor,
                            )
                          : Image.file(
                              File(_pickedImage!.path),
                              fit: BoxFit.contain,
                            ),
                    )
                  : CircleAvatar(
                      radius: 60,
                      backgroundColor: inputBoxColor,
                      backgroundImage: FileImage(
                        File(_pickedImage!.path),
                      ),
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
              controller: fullnameController,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomInputBox(
                      title: "Date Of Birth",
                      hint: "Date Of Birth",
                      isInvisible: false,
                      icon: Icons.calendar_today,
                      suffixIcon: null,
                      controller: dateController,
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          maxTime: DateTime(2021, 7, 15),
                          minTime: DateTime(1970, 7, 15),
                          theme: DatePickerTheme(
                            backgroundColor: whiteColor,
                            itemStyle: TextStyle(
                              color: blackColor,
                              fontSize: 18.0,
                            ),
                          ),
                          onChanged: (date) {
                            print('change $date');
                          },
                          onConfirm: (date) {},
                          currentTime: DateTime.now(),
                        );
                      },
                      icon: Icon(
                        Icons.calendar_today,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomInputBox(
              title: "Address",
              hint: "Address",
              isInvisible: false,
              icon: Icons.location_on,
              suffixIcon: null,
              controller: addressController,
            ),
            SizedBox(
              height: 20.0,
            ),
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
                    items: <String>['Learner', 'Lecturer']
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
            MyButton(
              size: size,
              width: size.width * 0.9,
              radius: 10,
              title: "Save and Continue",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PaymentSetupScreen(userType: dropDownValue)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
