import 'package:flutter/material.dart';
import 'package:medical_app/screens/notificationScreen.dart';
import 'package:medical_app/screens/settingScreen.dart';

import '../nav/navigator.dart';

Widget buildNotificationIcons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 40, 50, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Icon notifikasi
        GestureDetector(
          onTap: () {
            PageNavigator.fadeToPage(context, const NotificationScreen());
          },
          child: buildNotificationIcon(Icons.notifications),
        ),

        // Icon menu
        GestureDetector(
          onTap: () {
            PageNavigator.fadeToPage(context, const SettingScreen());
          },
          child: buildNotificationIcon(Icons.menu_rounded),
        ),
      ],
    ),
  );
}

// Widget reusable untuk icon notifikasi dan menu
Widget buildNotificationIcon(IconData iconData) {
  return Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
      color: Colors.yellow[600],
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 10,
          offset: const Offset(3, 5),
        ),
      ],
    ),
    child: Center(
      child: Icon(
        iconData,
        color: Colors.black,
        size: 25,
      ),
    ),
  );
}
