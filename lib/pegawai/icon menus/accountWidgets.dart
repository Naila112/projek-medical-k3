import 'package:flutter/material.dart';
import 'package:medical_app/nav/navigator.dart';
import 'package:medical_app/pegawai/profile/datakaryawanScreen.dart';
import 'package:medical_app/pegawai/screens/modifyScreen.dart';

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
Widget buildAccountInfo(BuildContext context) {
  return InkWell(
    onTap: () {
      // Navigasi ke halaman profil ketika bagian mana pun dari widget diklik
      PageNavigator.slideLeftToPage(
        context,
        const DataKaryawanScreen(),
      );
    },
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      padding: const EdgeInsets.all(15),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(20),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.5),
      //       spreadRadius: 2,
      //       blurRadius: 5,
      //       offset: const Offset(0, 3),
      //     ),
      //   ],
      // ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFB0C3FF),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.black87,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Naila Dwi Adhini',
                // '$username',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Id Pegawai',
                // '$id',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          // const Spacer(),
          // const Icon(
          //   Icons.arrow_forward_ios_rounded,
          //   color: Colors.black87,
          // ),
        ],
      ),
    ),
  );
}
