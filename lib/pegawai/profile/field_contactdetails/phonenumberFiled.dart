import 'package:flutter/material.dart';

Widget buildPhoneNumberField() {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: const Color.fromARGB(52, 0, 0, 0)),
    ),
    child: TextFormField(
      keyboardType: TextInputType.phone, // Ubah tipe input menjadi phone
      decoration: const InputDecoration(
        hintText: ' ', // Ganti hintText menjadi "Phone Number"
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
      ),
    ),
  );
}
