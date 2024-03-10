import 'package:flutter/material.dart';
import 'package:medical_app/input/makeIcons.dart';

import 'settings/accountWidgets.dart';
import 'settings/historyWidget.dart';
import 'settings/logoutWidget.dart';
import 'settings/notificationsWidget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildBackIcons(context), // Memuat icon back
            buildTextMenu(context), // Memuat text menu
            buildTextAccount(context), // Memuat text account
            buildAccountInfo(
                context, ' '), // Memuat widget untuk menampilkan informasi akun
            buildTextSettings(context), // Memuat text settings
            buildNotification(
                context), // Memuat widget untuk menampilkan notification
            buildHistory(context), // Memuat widget untuk menampilkan history
            buildLogOut(context), // Memuat widget untuk menampilkan log put
          ],
        ),
      ),
    );
  }

  // Memuat text menu
  Widget buildTextMenu(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
      child: const Row(
        children: [
          Text(
            'Menu',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Tambahkan widget lainnya di sini sesuai kebutuhan
        ],
      ),
    );
  }
}
