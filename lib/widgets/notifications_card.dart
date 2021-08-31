import 'package:flutter/material.dart';

class NotificationsCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const NotificationsCard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.symmetric()),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Text(
              title,
              overflow: TextOverflow.visible,
              maxLines: 2,
              softWrap: true,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
