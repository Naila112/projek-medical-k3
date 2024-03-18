import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/icon%20medicalrecord/medicalrecordboxBuilder.dart';
import 'package:medical_app/pegawai/widgets/icon_widget.dart';

class MedicalRecordScreen extends StatelessWidget {
  const MedicalRecordScreen({super.key});

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
            buildTextMedicalRecord(context), // Memuat text Notification
            buildFirstMedicalRecordBox(
                context), // Memuat box notification dengan konten di dalamnya
            buildSecondMedicalRecordBox(
                context), // Memuat box notification dengan konten di dalamnya
            buildThirdMedicalRecordBox(
                context), // Memuat box notification dengan konten di dalamnya
          ],
        ),
      ),
    );
  }

  // Memuat text Medical Record
  Widget buildTextMedicalRecord(context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 25, 40, 25),
      child: const Row(
        children: [
          Text(
            'Medical Record',
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
