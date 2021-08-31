import 'package:flutter/material.dart';
import 'package:learnium/screens/setttings_screen.dart';
import 'package:learnium/screens/students/screens/downloads_screen.dart';
import 'package:learnium/utils/constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                  color: primaryColor,
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.arrow_downward,
                  color: blackColor,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DownloadsScreen()));
                },
              ),
              IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: blackColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsScreen()));
                  }),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cG9ydHJhaXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: size.width * 0.9,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            alignment: Alignment.center,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 20),
          UserDetailCard(
            size: size,
            text: "Bishal Rana Magar",
            icon: Icons.person,
          ),
          SizedBox(height: 20),
          UserDetailCard(
            size: size,
            text: "bishal@gmail.com",
            icon: Icons.mail,
          ),
          SizedBox(height: 20),
          UserDetailCard(
            size: size,
            text: "25th Oct 2000",
            icon: Icons.calendar_today,
          ),
          SizedBox(height: 20),
          UserDetailCard(
            size: size,
            text: "Kathmandu, Nepal",
            icon: Icons.gps_fixed,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class UserDetailCard extends StatelessWidget {
  const UserDetailCard({
    Key? key,
    required this.size,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final Size size;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xffff403f).withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          SizedBox(width: 40),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
