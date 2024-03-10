import 'package:flutter/material.dart';
import 'package:medical_app/input/makeIcons.dart';
import 'package:medical_app/input/makeDate.dart';
import 'package:medical_app/input/makeGreeting.dart';

import 'upcomingScreen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildNotificationIcons(context), // Memuat icon notifikasi dan menu
            buildGreetingBox(context, ''), // Memuat sapaan
            buildDateSection(context), // Memuat tanggal dan hari
            buildYellowBox(), // Memuat box kuning
            buildContentBox(
                context), // Memuat box putih dengan konten di dalamnya
          ],
        ),
      ),
    );
  }

  // Memuat box kuning
  Widget buildYellowBox() {
    return const SizedBox(height: 20);
  }

  // Memuat box putih dengan konten di dalamnya
  Widget buildContentBox(context) {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.yellow[600],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.3),
        //     spreadRadius: -1,
        //     blurRadius: 10,
        //     offset: const Offset(0, -5),
        //   ),
        // ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.3),
              //     spreadRadius: 1,
              //     blurRadius: 10,
              //     offset: const Offset(3, 5),
              //   ),
              // ],
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/icon/kalender.png',
                    width: 115,
                    height: 115,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Are you having a check up today?',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                buildCheckCircleButton(context), // Memuat tombol check
              ],
            ),
          ),
          // Upcoming Appointments
          buildUpcomingAppointments(context)
        ],
      ),
    );
  }
}
