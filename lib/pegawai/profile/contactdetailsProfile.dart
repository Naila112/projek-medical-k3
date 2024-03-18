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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: const Border(
          top: BorderSide(color: Colors.black54),
          bottom: BorderSide(color: Colors.black54),
        ),
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
    );
  }
}
