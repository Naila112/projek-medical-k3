import 'package:flutter/material.dart';
import 'medicalrecordBoxWidget.dart';

Widget buildFirstMedicalRecordBox(BuildContext context) {
  return MedicalRecordBox(
    title: "Friday, 29 March 2024",
    content:
        "Blood pressure: 140/90 mmHg\nPulse rate: 108 bpm\nBody temperature: 39°C\nBody weight: 80 kg",
  );
}

// Widget buildSecondMedicalRecordBox(BuildContext context) {
//   return MedicalRecordBox(
//     title: "Checkup Alert",
//     content:
//         "Your health checkup appointment is approaching. Make sure to prepare for it!",
//   );
// }

Widget buildThirdMedicalRecordBox(BuildContext context) {
  return MedicalRecordBox(
    title: "Tuesday, 26 March 2024",
    content:
        "Blood pressure: 120/80 mmHg\nPulse rate: 79 bpm\nBody temperature: 36,5°C\nBody weight: 82 kg",
    accepted: true,
  );
}
