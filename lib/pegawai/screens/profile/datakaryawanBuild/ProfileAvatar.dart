import 'package:flutter/material.dart';

Widget buildProfileAvatar() {
  return const CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
  );
}
