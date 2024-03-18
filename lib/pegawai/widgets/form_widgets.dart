import 'package:flutter/material.dart';

TextEditingController nameController = TextEditingController();
TextEditingController idController = TextEditingController();

// Name
Widget makeNameInput(BuildContext context) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some name';
      }
      return null;
    },
    controller: nameController,
    decoration: const InputDecoration(
      labelText: 'Name',
      hintText: 'Enter your name',
      prefixIcon: Icon(Icons.person_pin_outlined),
      border: OutlineInputBorder(),
    ),
  );
}

// ID
Widget makeIDInput(BuildContext context) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some ID Pegawai';
      }

      if (value.length < 6) {
        return 'ID Pegawai must be at least 6 characters';
      }
      return null;
    },
    controller: idController,
    obscureText: false,
    decoration: const InputDecoration(
      labelText: 'ID Pegawai',
      hintText: 'Enter your ID Pegawai',
      prefixIcon: Icon(Icons.lock_outline),
      border: OutlineInputBorder(),
    ),
  );
}
