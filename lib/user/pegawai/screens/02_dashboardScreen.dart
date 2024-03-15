import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/user/pegawai/widgets/icon_widget.dart';
import 'package:medical_app/user/pegawai/widgets/date_widgets.dart';
import 'package:medical_app/user/pegawai/widgets/greeting_widget.dart';

import 'upcomingScreen.dart';

class DashboardScreen2 extends StatelessWidget {
  const DashboardScreen2({super.key});

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
      decoration: const BoxDecoration(
        color: Color(0xFFB0C3FF),
        borderRadius: BorderRadius.only(
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
                    'assets/icon/timemanagement.png',
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

  // Build check circle button widget
  Widget buildCheckCircleButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: CupertinoButton(
          onPressed: () {
            // Add logic here when the button is pressed
          },
          padding: EdgeInsets.zero,
          child: const Icon(
            CupertinoIcons.checkmark_alt_circle,
            size: 40,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
