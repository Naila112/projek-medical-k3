import 'package:flutter/material.dart';

Widget buildIdPegawaiField() {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black54),
    ),
    child: const TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: ' ',
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
      ),
    ),
  );
}
