import 'package:flutter/material.dart';
import 'package:learnium/models/settings.dart';
import 'package:learnium/screens/students/screens/profile.dart';
import 'package:learnium/utils/constants/constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: blackColor,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
          title: const Text('Settings', style: TextStyle(color: Colors.black)),
          backgroundColor: whiteColor,
          elevation: 0,
        ),
        body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: settingsData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  settingsData[index].onPress(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              settingsData[index].settingIcon,
                              size: 24,
                              color: primaryColor,
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Text(
                              settingsData[index].settingTitle,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
