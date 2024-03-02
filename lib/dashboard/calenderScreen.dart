import 'package:flutter/material.dart';
import 'package:medical_app/input/makeDate.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Navigator.pop(context) digunakan untuk kembali ke layar sebelumnya saat tombol diklik
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              ),
            ),
            buildDate(context), // Memanggil fungsi buildDateSection
            // Tambahkan widget lainnya di sini sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}
