// import 'package:flutter/material.dart';
// import 'package:animate_do/animate_do.dart';
// import 'package:medical_app/page/LoginadminPage.dart';
// import 'package:medical_app/user/pegawai/widgets/form_widgets.dart';
// import 'package:medical_app/user/pegawai/widgets/icon_widget.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   bool _isPasswordVisible = false;
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             buildBackIcons(context), // Menampilkan tombol kembali
//             buildSignUpForm(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildSignUpForm() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 40),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             const SizedBox(height: 10),
//             FadeInUp(
//               duration: const Duration(milliseconds: 1000),
//               child: const Text(
//                 "Sign up",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 20),
//             FadeInUp(
//               duration: const Duration(milliseconds: 1100),
//               child: Text(
//                 "Create an account",
//                 style: TextStyle(fontSize: 15, color: Colors.grey[700]),
//               ),
//             ),
//             const SizedBox(height: 20),
//             FadeInUp(
//               duration: const Duration(milliseconds: 1200),
//               child: makeNameInput(context),
//             ),
//             const SizedBox(height: 10),
//             FadeInUp(
//               duration: const Duration(milliseconds: 1300),
//               child: makeIDInput(context),
//             ),
//             const SizedBox(height: 10),
//             FadeInUp(
//               duration: const Duration(milliseconds: 1400),
//               child: makeEmailInput(context),
//             ),
//             const SizedBox(height: 10),
//             FadeInUp(
//               duration: const Duration(milliseconds: 1500),
//               child: makePasswordInput(
//                 context,
//                 isPasswordVisible: _isPasswordVisible,
//                 onPressed: () {
//                   setState(() {
//                     _isPasswordVisible = !_isPasswordVisible;
//                   });
//                 },
//               ),
//             ),
//             const SizedBox(height: 40),
//             FadeInUp(
//               duration: const Duration(milliseconds: 1600),
//               child: buildSignUpButton(),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget untuk membangun tombol sign up
//   Widget buildSignUpButton() {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(50),
//         border: Border.all(color: Colors.black),
//       ),
//       child: MaterialButton(
//         minWidth: double.infinity,
//         height: 60,
//         onPressed: () {
//           if (_formKey.currentState!.validate()) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const LoginadminPage(),
//               ),
//             );
//           }
//         },
//         color: const Color(0xFFB0C3FF),
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: const Text(
//           "Login",
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontSize: 18,
//           ),
//         ),
//       ),
//     );
//   }
// }
