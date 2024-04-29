import 'package:flutter/material.dart';

AppBar buildBackIcons(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      padding: const EdgeInsets.only(left: 15, top: 20),
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    ),
  );
}
