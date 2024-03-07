import 'package:flutter/material.dart';
import 'screens/dashboardScreen.dart';
// import 'dashboard/notificationScreen.dart';
// import 'page/HomePage.dart';
// import 'page/LoginPage.dart';
// import 'page/SignupPage.dart';

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
        // "loginPage": (context) => const LoginPage(),
        // "signupPage": (context) => const SignupPage(),
        "/": (context) => const DashboardScreen(),
        // "/": (context) => const NotificationScreen(),
      },
    );
  }
}
