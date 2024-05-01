import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/screens/profile/datakaryawanBuild/ProfileAvatar.dart';
import 'package:medical_app/pegawai/screens/profile/datakaryawanBuild/SectionTitle.dart';
import 'package:medical_app/pegawai/screens/profile/datakaryawanBuild/TextField.dart';
import 'package:medical_app/pegawai/screens/profile/modifyScreen.dart';

class DataKaryawanScreen extends StatefulWidget {
  const DataKaryawanScreen({super.key});

  @override
  _DataKaryawanScreenState createState() => _DataKaryawanScreenState();
}

class _DataKaryawanScreenState extends State<DataKaryawanScreen> {
  String _fullName = 'Naila';
  String _idNumber = '123456';
  String _dateOfBirth = '07/07/2007';
  String _gender = 'Female';
  String _city = 'Lhokseumawe';
  String _phoneNumber = '081234567891';
  String _email = 'naila@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Data Karyawan'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildProfileAvatar(),
            const SizedBox(height: 20),
            buildSectionTitle('General'),
            const SizedBox(height: 20),
            buildTextField('Full Name', text: _fullName),
            buildTextField('ID Number', text: _idNumber),
            buildTextField('Date of Birth', text: _dateOfBirth),
            buildTextField('Gender', text: _gender),
            buildTextField('City/District', text: _city),
            const SizedBox(height: 30),
            buildSectionTitle('Contact Details'),
            const SizedBox(height: 20),
            buildTextField('Phone Number', text: _phoneNumber),
            buildTextField('Email', text: _email),
            const SizedBox(height: 0),
            buildSubmitButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: TextButton(
        onPressed: () {
          _navigateAndDisplayModifyScreen(context);
        },
        child: const Text(
          'Modify',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ),
    );
  }

  void _navigateAndDisplayModifyScreen(BuildContext context) async {
    final Map<String, dynamic>? updatedData = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ModifyScreen(
          fullName: _fullName,
          idNumber: _idNumber,
          dateOfBirth: _dateOfBirth,
          gender: _gender,
          city: _city,
          phoneNumber: _phoneNumber,
          email: _email,
        ),
      ),
    );

    if (updatedData != null) {
      setState(() {
        _fullName = updatedData['fullName'] ?? _fullName;
        _idNumber = updatedData['idNumber'] ?? _idNumber;
        _dateOfBirth = updatedData['dateOfBirth'] ?? _dateOfBirth;
        _gender = updatedData['gender'] ?? _gender;
        _city = updatedData['city'] ?? _city;
        _phoneNumber = updatedData['phoneNumber'] ?? _phoneNumber;
        _email = updatedData['email'] ?? _email;
      });
    }
  }
}
