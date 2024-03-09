import 'package:flutter/material.dart';

Widget buildGreetingBox(BuildContext context, String username) {
  // Mendapatkan waktu saat ini
  DateTime now = DateTime.now();
  int hour = now.hour;

  // Menentukan teks berdasarkan waktu
  String greeting = '';
  if (hour < 12) {
    greeting = 'Good Morning';
  } else if (hour < 18) {
    greeting = 'Good Afternoon';
  } else {
    greeting = 'Good Evening';
  }

  // Kembalikan widget yang akan ditampilkan
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    child: Row(
      children: [
        Text(
          '$greeting! $username',
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
