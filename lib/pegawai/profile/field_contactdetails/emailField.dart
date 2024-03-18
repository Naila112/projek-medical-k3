import 'package:flutter/material.dart';

Widget buildEmailField() {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black54),
    ),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: ' ',
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
      ),
    ),
  );
}
