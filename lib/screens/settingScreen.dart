import 'package:flutter/material.dart';
import 'package:medical_app/input/makeIcons.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildBoxKuning(context), // Memuat box kuning atas
            buildText(context), // Memuat text
          ],
        ),
      ),
    );
  }

// Memuat box kuning atas
  Widget buildBoxKuning(context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.yellow[600],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: -1,
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: buildBackIcons(context), // Memuat icon back
    );
  }

  // Memuat text
  Widget buildText(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: const Row(
        children: [
          Text(
            'Setting',
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
