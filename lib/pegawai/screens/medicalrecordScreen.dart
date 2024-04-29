import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/icon%20medicalrecord/medicalrecordBoxWidget.dart';
import 'package:medical_app/pegawai/screens/dashboardScreen.dart';

class MedicalRecordScreen extends StatelessWidget {
  const MedicalRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Record'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DashboardScreen(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildFirstMedicalRecordBox(context),
            // const SizedBox(height: 20),
            buildSecondMedicalRecordBox(
                context), // Memuat box notification dengan konten di dalamnya
            buildThirdMedicalRecordBox(context),
          ],
        ),
      ),
    );
  }

  Widget buildFirstMedicalRecordBox(BuildContext context) {
    return MedicalRecordBox(
      title: "Monday, 1 Apr 2024",
      content:
          "Blood pressure: 120/80 mmHg\nPulse rate: 79 bpm\nBody temperature: 37°C\nBody weight: 81 kg",
      accepted: true,
    );
  }

  Widget buildSecondMedicalRecordBox(BuildContext context) {
    return MedicalRecordBox(
      title: "Friday, 29 March 2024",
      content:
          "Blood pressure: 140/90 mmHg\nPulse rate: 108 bpm\nBody temperature: 39°C\nBody weight: 80 kg",
    );
  }

  Widget buildThirdMedicalRecordBox(BuildContext context) {
    return MedicalRecordBox(
      title: "Tuesday, 26 March 2024",
      content:
          "Blood pressure: 120/80 mmHg\nPulse rate: 79 bpm\nBody temperature: 36,5°C\nBody weight: 82 kg",
      accepted: true,
    );
  }
}
