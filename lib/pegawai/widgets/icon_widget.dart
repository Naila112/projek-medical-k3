import 'package:flutter/material.dart';

AppBar buildBackIcons(BuildContext context) {
  return AppBar(
    backgroundColor:
        Colors.transparent, // Background color diatur menjadi transparan
    elevation: 0, // Elevation diatur menjadi 0 agar tidak menampilkan bayangan
    leading: Padding(
      padding:
          const EdgeInsets.only(left: 15, top: 20), // Mengatur padding ikon
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ),
  );
}
