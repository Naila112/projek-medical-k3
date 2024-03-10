import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/screens/menuScreen.dart';
import 'package:medical_app/screens/notificationScreen.dart';
import '../nav/navigator.dart';

// Build notification icons row
Widget buildNotificationIcons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Icon button for notifications
        CupertinoButton(
          onPressed: () {
            PageNavigator.fadeToPage(context, const NotificationScreen());
          },
          child: buildNotificationIcon(Icons.notifications),
        ),
        // Icon button for settings
        CupertinoButton(
          onPressed: () {
            PageNavigator.fadeToPage(context, const MenuScreen());
          },
          child: buildNotificationIcon(Icons.menu_rounded),
        ),
      ],
    ),
  );
}

// Build notification icon widget
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

// Build check circle button widget
Widget buildCheckCircleButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(left: 10.0),
    child: Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: CupertinoButton(
        onPressed: () {
          // Add logic here when the button is pressed
        },
        padding: EdgeInsets.zero,
        child: const Icon(
          Icons.check_circle_sharp,
          size: 47,
          color: Colors.black87,
        ),
      ),
    ),
  );
}

// Build back button widget
Widget buildBackIcons(BuildContext context) {
  return Container(
    padding: const EdgeInsets.fromLTRB(30, 40, 0, 40),
    child: CupertinoButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back_ios,
        size: 20,
        color: Colors.black,
      ),
    ),
  );
}
