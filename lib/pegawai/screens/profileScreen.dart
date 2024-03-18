import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/widgets/icon_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildBackIcons(context), // Memuat icon back
            buildTextProfile(context), // Memuat text Profile
            buildContentGeneral(context),
          ],
        ),
      ),
    );
  }

// Memuat text Profile
  Widget buildTextProfile(context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(50, 30, 0, 0),
      child: const Row(
        children: [
          Text(
            'Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50)
          // Tambahkan widget lainnya di sini sesuai kebutuhan
        ],
      ),
    );
  }

// Memuat Box General
  Widget buildContentGeneral(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
          child: const Text(
            'General',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10), // Jarak antara teks dan box
        buildTextFullName(context),
        // buildTextBirth(context),
      ],
    );
  }

  // Memuat Box di bawah teks "Full name"
  Widget buildTextFullName(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border(
          top: BorderSide(color: Colors.black54),
          bottom: BorderSide(color: Colors.black54),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full name',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10), // Jarak antara teks dan box
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black54),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your full name',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          SizedBox(height: 20), // Jarak antara box sebelumnya dan box baru
          Text(
            'Date of Birth',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10), // Jarak antara teks dan box
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black54),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your date of birth',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Memuat Box di bawah teks "Date of Birth"
  // Widget buildTextBirth(context) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
  //     width: double.infinity,
  //     height: 300,
  //     decoration: BoxDecoration(
  //       color: Colors.grey[300],
  //       border: const Border(
  //         top: BorderSide(color: Colors.black54),
  //         bottom: BorderSide(color: Colors.black54),
  //       ),
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         const Text(
  //           'Date of Birth',
  //           style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 17,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         // Tambahkan widget lain di dalam box sesuai kebutuhan
  //         const SizedBox(height: 10), // Jarak antara teks dan box
  //         Container(
  //           width: double.infinity,
  //           height: 50,
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(10),
  //             border: Border.all(color: Colors.black54),
  //           ),
  //           child: const TextField(
  //             decoration: InputDecoration(
  //               hintText: ' ', // Text placeholder
  //               border:
  //                   InputBorder.none, // Menghilangkan border bawaan TextField
  //               contentPadding: EdgeInsets.symmetric(
  //                   horizontal: 10), // Padding untuk teks dalam TextField
  //             ),
  //           ),
  //         ),

  //         // Tambahkan widget di dalam box sesuai kebutuhan
  //       ],
  //     ),
  //   );
  // }
}
