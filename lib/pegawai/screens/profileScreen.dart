import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/widgets/icon_widget.dart';

@override
Widget buildProfileScreen(BuildContext context) {
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
  return Container(
    padding: const EdgeInsets.fromLTRB(50, 5, 0, 0),
    child: const Row(
      children: [
        Text(
          'General',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 50)
        // Tambahkan widget lainnya di sini sesuai kebutuhan
      ],
    ),
  );
}
