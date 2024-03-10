import 'package:flutter/material.dart';
import 'package:medical_app/input/makeIcons.dart';

import '../../../../input/makeData.dart';
import 'profile_avatar.dart';
import 'profile_info.dart';

class ProfileScreen extends StatelessWidget {
  final User? user;

  const ProfileScreen({super.key, this.user});

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
            if (user != null) ...[
              // Jika user tidak null, tampilkan widget untuk menampilkan profil user
              buildProfile(context),
            ],

            // Tambahkan widget lainnya di sini sesuai kebutuhan
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
            'Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Memuat widget untuk menampilkan profil user
  Widget buildProfile(BuildContext context) {
    return Center(
      // Menggunakan Center untuk menempatkan widget di tengah secara horizontal
      child: Padding(
        padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ProfileAvatar(
                  imageUrl: user!.imageUrl,
                  icon: Icons.person,
                  onTap: () {
                    // Tampilkan dialog atau tampilan untuk memilih atau mengambil foto baru
                  },
                ),
                // IconButton(
                //   icon: const Icon(Icons.edit),
                //   onPressed: () {
                //     // Tampilkan dialog atau tampilan untuk memilih atau mengambil foto baru
                //   },
                // ),
              ],
            ),
            const SizedBox(height: 20),
            ProfileInfo(
              name: user!.name,
              email: user!.email,
              bio: user!.bio,
            ),
          ],
        ),
      ),
    );
  }
}
