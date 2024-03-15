import 'package:flutter/material.dart';
import 'package:medical_app/user/pegawai/dialogs/notificationToggle.dart';

Widget buildNotification(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.5),
      //     spreadRadius: 2,
      //     blurRadius: 5,
      //     offset: const Offset(0, 3),
      //   ),
      // ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   color: Colors.grey[200], // Ganti warna sesuai kebutuhan
          // ),
          child: const Icon(
            Icons.notifications,
            color: Colors.black87,
            size: 25,
          ),
        ),
        // const SizedBox(width: 10),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Notification',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Spacer(),
        const NotificationToggle(), // Menggunakan widget stateful baru
      ],
    ),
  );
}
