import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/screens/menuScreen.dart';

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
    padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$greeting! $username',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const MenuScreen()),
                // );
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
