// import 'package:flutter/material.dart';
// import 'package:medical_app/input/makeIcons.dart';

// import 'settings/accountWidgets.dart';
// import 'settings/notificationWidget.dart';

// class SettingScreen extends StatelessWidget {
//   const SettingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             buildBackIcons(context), // Memuat icon back
//             buildTextSetting(context), // Memuat text setting
//             buildTextAccount(context), // Memuat text account
//             buildAccountInfo(
//                 context, ' '), // Memuat widget untuk menampilkan informasi akun
//             // Memuat box kuning
//             buildWhiteBox(), // Memuat jarak antaran account dan history
//             buildTextNotification(context), // Memuat text notification
//             buildHistory(context), // Memuat widget untuk menampilkan history
//           ],
//         ),
//       ),
//     );
//   }

//   // Memuat text setting
//   Widget buildTextSetting(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(40, 0, 40, 30),
//       child: const Row(
//         children: [
//           Text(
//             'Setting',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           // Tambahkan widget lainnya di sini sesuai kebutuhan
//         ],
//       ),
//     );
//   }

//   // Memuat box putih
//   Widget buildWhiteBox() {
//     return const SizedBox(height: 20);
//   }
// }
