import 'package:flutter/material.dart';
import 'package:learnium/screens/students/screens/profile.dart';
import 'package:learnium/screens/students/screens/video_player.dart';
import 'package:learnium/utils/constants/constants.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  _DownloadsScreenState createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
          title: const Text('Downloads', style: TextStyle(color: Colors.black)),
          backgroundColor: whiteColor,
          elevation: 0,
          actions: [
            Icon(
              Icons.more_vert,
              color: blackColor,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              VideoCard(
                size: size,
                thumbnailUrl:
                    "https://img-c.udemycdn.com/course/240x135/903744_8eb2.jpg",
                author: "TechStack",
                duration: "4hrs 16min 12secs",
                title: "Data Science with Python",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({
    Key? key,
    required this.size,
    required this.thumbnailUrl,
    required this.title,
    required this.author,
    required this.duration,
  }) : super(key: key);

  final Size size;
  final String thumbnailUrl;
  final String title;
  final String author;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => VideoPlayer()));
      },
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Container(
                width: size.width * 0.3,
                height: size.width * 0.2,
                child: Image(
                  image: NetworkImage(
                    thumbnailUrl,
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(author),
                SizedBox(
                  height: 5,
                ),
                Text(duration, style: TextStyle(fontWeight: FontWeight.w500)),
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
            ),
          ],
        ),
      ),
    );
  }
}
