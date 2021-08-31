import 'package:flutter/material.dart';

class Notifications {
  final String title;
  final IconData? icon;
  Notifications({required this.title, this.icon = Icons.notifications});

  static List<Notifications> fetchAll() {
    return [
      Notifications(
        title: "Kevin just dropped a ethical hacking course.",
      ),
      Notifications(
        icon: Icons.person,
        title: "We have new lecturer, Dennis",
      ),
      Notifications(
        icon: Icons.money,
        title: "Explore more courses on productivity",
      ),
    ];
  }
}
