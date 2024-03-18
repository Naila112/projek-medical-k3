import 'package:flutter/material.dart';

// import 'pegawai/screens/profileScreen.dart';
import 'pegawai/screens/dashboardScreen.dart';
// import 'page/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Medical Healthcare",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        // "/": (context) => const HomePage(),
        "/": (context) => const DashboardScreen(),
        // "/": (context) => const ProfileScreen(),
      },
    );
  }
}
