import 'package:flutter/material.dart';
import 'package:medical_app/input/makeIcons.dart';
import 'notification/notificationBoxBuilder.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildBackIcons(context), // Memuat icon back
            buildText(context), // Memuat text
            buildFirstNotificationBox(
                context), // Memuat box notification dengan konten di dalamnya
            buildSecondNotificationBox(
                context), // Memuat box notification dengan konten di dalamnya
            buildThirdNotificationBox(
                context), // Memuat box notification dengan konten di dalamnya
          ],
        ),
      ),
    );
  }

  // Memuat text
  Widget buildText(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: const Row(
        children: [
          Text(
            'Notification',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Tambahkan widget lainnya di sini sesuai kebutuhan
        ],
      ),
    );
  }
}
