import 'package:flutter/material.dart';

class Settings {
  final String settingTitle;
  final IconData settingIcon;
  final Function onPress;

  Settings({
    required this.settingTitle,
    required this.settingIcon,
    required this.onPress,
  });
}

List<Settings> settingsData = [
  Settings(
      settingTitle: "General",
      settingIcon: (Icons.settings),
      onPress: () {}),
  Settings(
      settingTitle: "Privacy Policy",
      settingIcon: (Icons.file_copy),
      onPress: () {}),
  Settings(
      settingTitle: "Help and Support",
      settingIcon: (Icons.help),
      onPress: () {}),
  Settings(
    settingTitle: "Log Out",
    settingIcon: (Icons.logout),
    onPress: (){},
  ),
];