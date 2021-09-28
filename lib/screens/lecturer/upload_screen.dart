import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learnium/screens/students/course_detail_screen.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:learnium/widgets/custom_input.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File? _pickedImage;

  final _imagePicker = ImagePicker();

  Future pickPhoto(ImageSource source) async {
    final _pickImage = await _imagePicker.pickImage(source: source);
    setState(() {
      _pickedImage = File(_pickImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Upload Content Here',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomInputBox(
                title: 'Title',
                hint: 'Title',
                icon: Icons.edit,
                isInvisible: false,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: inputBoxColor,
                    ),
                    child: TextFormField(
                      obscureText: false,
                      maxLines: 6,
                      minLines: 6,
                      decoration: InputDecoration(
                        // prefixIcon: Icon(Icons.edit),
                        hintText: "Description",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Files",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 10),
                  InkWell(
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              pickPhoto(ImageSource.camera);
                                            },
                                            icon: Icon(
                                              Icons.file_copy,
                                            ),
                                            iconSize: 50.0,
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Container(
                                            width: size.width,
                                            alignment: Alignment.center,
                                            child: Text("File Manager"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              pickPhoto(ImageSource.gallery);
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
                                    )
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
                    child: Container(
                      width: size.width * 0.9,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                      ),
                      child: Text(
                        "Add Files",
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomInputBox(
                title: 'Price',
                hint: 'Price',
                icon: Icons.money,
                isInvisible: false,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              size: size,
              title: "Upload",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Course Published",
                      style: TextStyle(
                        color: whiteColor,
                      ),
                    ),
                    backgroundColor: primaryColor,
                  ),
                );
              },
              width: size.width * 0.9,
              radius: 14,
            ),
          ],
        ),
      ),
    );
  }
}
