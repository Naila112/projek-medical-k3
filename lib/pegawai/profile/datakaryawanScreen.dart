import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/screens/profileScreen.dart';
import 'package:medical_app/pegawai/widgets/icon_widget.dart';

class DataKaryawanScreen extends StatelessWidget {
  const DataKaryawanScreen({super.key});

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
            buildDataKaryawan(context), // Memuat text Profile
            const SizedBox(height: 20), // Tambahkan jarak antara teks dan kotak
            buildDataBox(context), // Memuat kotak data karyawan
            buildModify(context),
          ],
        ),
      ),
    );
  }

  // Memuat text Profile
  Widget buildDataKaryawan(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(50, 30, 0, 0),
      child: Text(
        'Data Karyawan',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Memuat kotak data karyawan
  Widget buildDataBox(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        width: double.infinity, // Apply width to the Container
        padding: const EdgeInsets.symmetric(
            horizontal: 30, vertical: 10), // Padding for the Container
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromARGB(52, 0, 0, 0)),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Name',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text('Naila'),
            Text(
              'ID Pegawai',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text('-'), // Replace with actual ID
            Text(
              'Date of Birth',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text('July 7, 2007'),
            Text(
              'Gender',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text('Female'),
            Text(
              'Phone Number',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text('0813202212110'),
            Text(
              'Email',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text('naila@gmail.com'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  // Modify text
  Widget buildModify(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
          ),
        );
      },
      child: const Center(
        child: Text(
          'Modify',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
