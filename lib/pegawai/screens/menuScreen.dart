import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/icon%20menus/accountWidgets.dart';
import 'package:medical_app/pegawai/icon%20menus/medicalrecordWidget.dart';
import 'package:medical_app/pegawai/icon%20menus/logoutWidget.dart';
import 'package:medical_app/pegawai/widgets/icon_widget.dart';

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
            buildContentBox(context),
            const SizedBox(height: 20),
            buildTextSettings(context), // Memuat text setting
            buildMedicalRecord(
                context), // Memuat widget untuk menampilkan history
            buildLogOut(context), // Memuat widget untuk menampilkan log put
          ],
        ),
      ),
    );
  }

  Widget buildContentBox(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      decoration: const BoxDecoration(
        color: Color(0xFFB0C3FF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: buildBackIcons(context),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 0, 25),
            child: buildTextMenu(context),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: buildTextAccount(context),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: buildAccountInfo(context),
          ),
        ],
      ),
    );
  }

  // Memuat text menu
  Widget buildTextMenu(BuildContext context) {
    return const Text(
      'Menu',
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
