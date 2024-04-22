import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/profile/datakaryawanScreen.dart';
import 'package:medical_app/pegawai/widgets/date_widgets.dart';
import 'package:medical_app/pegawai/widgets/greeting_widget.dart';

import 'medicalrecordScreen.dart';
import 'schedulecheckupScreen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // buildNotificationIcons(context), // Memuat icon notifikasi dan menu
            buildGreetingBox(context, ''), // Memuat sapaan
            buildDateSection(context), // Memuat tanggal dan hari
            const SizedBox(height: 20), // Memuat box pemisah
            buildBox(context),
          ],
        ),
      ),
    );
  }

  Widget buildBox(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFB0C3FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 15),
          buildContentBox(
            context,
            'Data Karyawan',
            'treatment.png',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DataKaryawanScreen(),
                ),
              );
            },
          ),
          // const SizedBox(height: 5), // Tambahkan sedikit ruang antara box
          buildContentBox(
            context,
            'Schedule Check-Up',
            'calendar-plus.png',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScheduleCheckUpScreen(),
                ),
              );
            },
          ),
          // const SizedBox(height: 5), // Tambahkan sedikit ruang antara box
          buildContentBox(
            context,
            'Medical Record',
            'stethoscope.png',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MedicalRecordScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 20), // Memuat box pemisah
        ],
      ),
    );
  }

  // Memuat box biru dengan konten di dalamnya
  Widget buildContentBox(BuildContext context, String title, String imageName,
      {required VoidCallback? onPressed}) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.symmetric(
            vertical: 15), // Tambahkan padding vertikal
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            buildImage(imageName),
            const SizedBox(width: 10), // Menambah jarak antara gambar dan teks
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22, // Ubah ukuran teks judul menjadi lebih besar
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Ubah warna teks judul
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(width: 10),
            // Memuat tombol check
          ],
        ),
      ),
    );
  }

  // Membuat gambar berdasarkan nama file
  Widget buildImage(String imageName) {
    return Padding(
      padding:
          const EdgeInsets.all(15.0), // Menambahkan padding di sekitar gambar
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(
            Colors.black, // Menggunakan warna putih untuk tetapkan warna asli
            BlendMode.srcIn,
          ),
          child: Image.asset(
            'assets/icon/$imageName',
            width: 70, // Mengurangi lebar foto menjadi 80
            height: 70, // Mengurangi tinggi foto menjadi 80
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
