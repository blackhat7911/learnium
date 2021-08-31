import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learnium/models/notifications.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/widgets/notifications_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final _notifications = Notifications.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notifications",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _notifications.length,
                itemBuilder: (context, index) {
                  return NotificationsCard(
                    title: _notifications[index].title,
                    icon: _notifications[index].icon!,
                  );
                }),
          )
        ],
      ),
    );
  }
}
