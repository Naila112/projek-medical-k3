// Memuat text account
import 'package:flutter/material.dart';
import 'package:medical_app/nav/navigator.dart';
import 'package:medical_app/pegawai/screens/medicalrecordScreen.dart';

Widget buildTextSettings(context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
    child: const Row(
      children: [
        Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Tambahkan widget lainnya di sini sesuai kebutuhan
      ],
    ),
  );
}

// Memuat widget untuk menampilkan history
Widget buildMedicalRecord(BuildContext context) {
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
            Icons.history_rounded,
            color: Colors.black87,
            size: 30,
          ),
        ),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Medical Record',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black87,
            size: 30,
          ),
          onPressed: () {
            PageNavigator.slideLeftToPage(
              context,
              const MedicalRecordScreen(),
            );
            // Tambahkan logika untuk mengedit informasi akun
          },
        ),
      ],
    ),
  );
}
