import 'package:flutter/material.dart';

import '../../../input/makeData.dart';
import '../../../nav/navigator.dart';
import 'model_profiles/profileScreen.dart';

// Memuat text account
Widget buildTextAccount(context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
    child: const Row(
      children: [
        Text(
          'Account',
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

// Memuat widget untuk menampilkan informasi akun
Widget buildAccountInfo(BuildContext context, String email) {
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
            Icons.person,
            color: Colors.black87,
            size: 25,
          ),
        ),
        const SizedBox(width: 10),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Naila Dwi Adhini',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              // email,
              'naila@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios_rounded,
              color: Colors.black87),
          onPressed: () {
            User currentUser = User(
              name:
                  'Naila Dwi Adhini', // Ganti dengan nama pengguna sesuai kebutuhan
              email: 'naila@gmail.com', bio: '',
              imageUrl: '', // Ganti dengan email sesuai kebutuhan
              // Tambahkan nilai lain sesuai kebutuhan
            );
            PageNavigator.slideLeftToPage(
              context,
              ProfileScreen(user: currentUser),
            );
            // Tambahkan logika untuk mengedit informasi akun
          },
        ),
      ],
    ),
  );
}