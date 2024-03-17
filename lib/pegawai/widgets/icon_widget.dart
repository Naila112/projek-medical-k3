import 'package:flutter/material.dart';

Widget buildBackIcons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30, top: 30),
    child: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    ),
  );
}
