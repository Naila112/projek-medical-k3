import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:medical_app/page/LoginHRDPage.dart';
import 'package:medical_app/user/pegawai/widgets/icon_widget.dart';
import 'package:medical_app/page/LoginpegawaiPage.dart';
import 'package:medical_app/page/SignupPage.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FadeInUp(
                      duration: const Duration(milliseconds: 1000),
                      child: const Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Column(
                      children: <Widget>[
                        FadeInUp(
                          duration: const Duration(milliseconds: 1100),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 100,
                            onPressed: () {
                              // Navigasi ke halaman SignupPage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupPage(),
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              "Admin",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1200),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.black),
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 100,
                              onPressed: () {
                                // Navigasi ke halaman LoginPage
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const LoginpegawaiPage(),
                                  ),
                                );
                              },
                              color: const Color(0xFFB0C3FF),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Text(
                                "Pegawai",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1300),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 100,
                            onPressed: () {
                              // Navigasi ke halaman LoginHRDPage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginHRDPage(),
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              "HRD",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
