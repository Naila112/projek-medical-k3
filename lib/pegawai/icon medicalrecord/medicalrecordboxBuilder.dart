import 'package:flutter/material.dart';
import 'medicalrecordBoxWidget.dart';

Widget buildFirstMedicalRecordBox(BuildContext context) {
  return MedicalRecordBox(
    title: "Health Check Reminder",
    content:
        "It's time for your annual health checkup. Don't forget to schedule your appointment!",
  );
}

Widget buildSecondMedicalRecordBox(BuildContext context) {
  return MedicalRecordBox(
    title: "Checkup Alert",
    content:
        "Your health checkup appointment is approaching. Make sure to prepare for it!",
  );
}

Widget buildThirdMedicalRecordBox(BuildContext context) {
  return MedicalRecordBox(
    title: "Check Expired",
    content:
        "You missed your health checkup appointment. Please reschedule it as soon as possible.",
    accepted: true,
  );
}
