import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/widgets/icon_widget.dart';

class ScheduleCheckUpScreen extends StatelessWidget {
  const ScheduleCheckUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildBackIcons(context), // Memuat icon back
            buildTextScheduleCheckUp(context), // Memuat text Notification
          ],
        ),
      ),
    );
  }

  // Memuat text Schedule Check-Up
  Widget buildTextScheduleCheckUp(context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 25, 40, 25),
      child: const Row(
        children: [
          Text(
            'Schedule Check-Up',
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
}
