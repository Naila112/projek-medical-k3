import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/profile/field_general/dateofbirthField.dart';
import 'package:medical_app/pegawai/profile/field_general/fullnameField.dart';
import 'package:medical_app/pegawai/profile/field_general/genderField.dart';
import 'package:medical_app/pegawai/profile/field_general/idpegawaiField.dart';

class GeneralProfile extends StatefulWidget {
  const GeneralProfile({super.key});

  @override
  _GeneralProfileState createState() => _GeneralProfileState();
}

class _GeneralProfileState extends State<GeneralProfile> {
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            buildFullNameField(),
            const SizedBox(height: 10),
            const Text(
              'Date of Birth',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const DateOfBirth(),
            const SizedBox(height: 10),
            const Text(
              'Gender',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const GenderSelection(),
            const SizedBox(height: 10),
            const Text(
              'Id Pegawai',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            buildIdPegawaiField(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
