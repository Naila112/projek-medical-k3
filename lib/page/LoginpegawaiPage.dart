import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:medical_app/pegawai/widgets/form_widgets.dart';
import 'package:medical_app/pegawai/widgets/icon_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildBackIcons(context), // Menampilkan tombol kembali
            buildLoginForm(),
          ],
        ),
      ),
    );
  }

  // Widget untuk membangun form login
  Widget buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            FadeInUp(
              duration: const Duration(milliseconds: 1000),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            FadeInUp(
              duration: const Duration(milliseconds: 1100),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 2.1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon/onlinephone.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: <Widget>[
                FadeInUp(
                  duration: const Duration(milliseconds: 1200),
                  child: makeNameInput(context),
                ),
                const SizedBox(height: 10),
                FadeInUp(
                  duration: const Duration(milliseconds: 1300),
                  child: makeIDInput(context),
                ),
              ],
            ),
            const SizedBox(height: 30),
            FadeInUp(
              duration: const Duration(milliseconds: 1400),
              child: Column(
                children: <Widget>[
                  // buildPegawaiLoginButton(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            /* Jika ingin menambahkan opsi "Forget Password"
            _buildForgetPassword(),
            */
          ],
        ),
      ),
    );
  }
}
