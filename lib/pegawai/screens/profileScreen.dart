import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/profile/ContactDetailsProfile.dart';
import 'package:medical_app/pegawai/profile/generalProfile.dart';
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
            buildContentContactDetails(context),
            buildSaveChangesButton(),
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
        const GeneralProfile(),
      ],
    );
  }

  // Memuat Box General
  Widget buildContentContactDetails(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
          child: const Text(
            'Contact details',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10), // Jarak antara teks dan box
        const ContactDetailsProfile(),
      ],
    );
  }

  Widget buildSaveChangesButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 150,
        height: 40,
        margin: const EdgeInsets.only(bottom: 20, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black),
        ),
        child: MaterialButton(
          onPressed: () {
            // Tambahkan fungsi yang akan dijalankan saat tombol ditekan
          },
          color: const Color(0xFFB0C3FF),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Text(
            "Save Changes",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
