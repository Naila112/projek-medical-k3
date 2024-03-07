import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildContentBox(context),
            buildContextText(),
          ],
        ),
      ),
    );
  }

  // Widget untuk membuat box kuning dengan konten di dalamnya
  Widget buildContentBox(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300, // Sesuaikan tinggi sesuai kebutuhan Anda
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
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
            offset: const Offset(0, 5), // ubah offset ke bawah (y=5)
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.pop(context) digunakan untuk kembali ke layar sebelumnya saat tombol diklik
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(50, 50, 0, 0),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              'Setting',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 15),
            ),
            // Tambahan widget lain di sini sesuai kebutuhan
          ],
        ),
      ),
    );
  }

  // Widget untuk membuat teks "Setting"
  Widget buildContextText() {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20), // Sesuaikan margin dengan kebutuhan Anda
      child: Text(
        'Setting',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
