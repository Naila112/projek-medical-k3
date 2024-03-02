// import 'package:flutter/material.dart';
// import 'package:animate_do/animate_do.dart';
// import '../dashboard/Dashboard.dart';
// import 'LoginPage.dart';

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
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 40),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 const SizedBox(height: 10),
//                 FadeInUp(
//                   duration: const Duration(milliseconds: 1000),
//                   child: const Text(
//                     "Sign up",
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 FadeInUp(
//                   duration: const Duration(milliseconds: 1100),
//                   child: Text(
//                     "Create an account",
//                     style: TextStyle(fontSize: 15, color: Colors.grey[700]),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 FadeInUp(
//                   duration: const Duration(milliseconds: 1200),
//                   child: TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter some name';
//                       }
//                       return null;
//                     },
//                     decoration: const InputDecoration(
//                       labelText: 'Name',
//                       hintText: 'Enter your name',
//                       prefixIcon: Icon(Icons.person),
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 FadeInUp(
//                   duration: const Duration(milliseconds: 1300),
//                   child: TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter some email';
//                       }

//                       bool emailValid = RegExp(
//                               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                           .hasMatch(value);
//                       if (!emailValid) {
//                         return 'Please enter a valid email';
//                       }

//                       return null;
//                     },
//                     decoration: const InputDecoration(
//                       labelText: 'Email',
//                       hintText: 'Enter your email',
//                       prefixIcon: Icon(Icons.email_outlined),
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 FadeInUp(
//                   duration: const Duration(milliseconds: 1400),
//                   child: TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter some password';
//                       }

//                       if (value.length < 6) {
//                         return 'Password must be at least 6 characters';
//                       }
//                       return null;
//                     },
//                     obscureText: !_isPasswordVisible,
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                       hintText: 'Enter your password',
//                       prefixIcon: const Icon(Icons.lock_outline_rounded),
//                       border: const OutlineInputBorder(),
//                       suffixIcon: IconButton(
//                         icon: Icon(_isPasswordVisible
//                             ? Icons.visibility_off
//                             : Icons.visibility),
//                         onPressed: () {
//                           setState(() {
//                             _isPasswordVisible = !_isPasswordVisible;
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 40),
//                 FadeInUp(
//                   duration: const Duration(milliseconds: 1500),
//                   child: Container(
//                     padding: const EdgeInsets.only(top: 3, left: 3),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       border: Border.all(color: Colors.black),
//                     ),
//                     child: MaterialButton(
//                       minWidth: double.infinity,
//                       height: 60,
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const Dashboard(),
//                             ),
//                           );
//                         }
//                       },
//                       color: Colors.yellow[600],
//                       elevation: 0,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: const Text(
//                         "Sign up",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 FadeInUp(
//                   duration: const Duration(milliseconds: 1600),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       const Text("Already have an account?"),
//                       TextButton(
//                         onPressed: () async {
//                           if (_formKey.currentState!.validate()) {
//                             // Simulate a successful sign up
//                             await Future.delayed(const Duration(seconds: 1));

//                             // Navigate to the login page
//                             Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const LoginPage(),
//                               ),
//                             );
//                           }
//                         },
//                         child: const Text(
//                           "Login",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
