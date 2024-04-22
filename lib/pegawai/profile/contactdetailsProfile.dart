import 'package:flutter/material.dart';
import 'field_general/fullnameField.dart';
import 'field_general/idpegawaiField.dart';

class ContactDetailsProfile extends StatefulWidget {
  const ContactDetailsProfile({super.key});

  @override
  _ContactDetailsProfileState createState() => _ContactDetailsProfileState();
}

class _ContactDetailsProfileState extends State<ContactDetailsProfile> {
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
              'Phone number',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            buildIdPegawaiField(),
            const SizedBox(height: 10),
            const Text(
              'Email',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            buildFullNameField(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
