import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/screens/modifyScreen.dart';

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
        title: const Text('Data Pegawai'),
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
            _buildProfileAvatar(),
            const SizedBox(height: 20),
            _buildSectionTitle('General'),
            const SizedBox(height: 20),
            _buildTextField('Full Name', text: _fullName),
            _buildTextField('ID Number', text: _idNumber),
            _buildTextField('Date of Birth', text: _dateOfBirth),
            _buildTextField('Gender', text: _gender),
            _buildTextField('City/District', text: _city),
            const SizedBox(height: 30),
            _buildSectionTitle('Contact Details'),
            const SizedBox(height: 20),
            _buildTextField('Phone Number', text: _phoneNumber),
            _buildTextField('Email', text: _email),
            const SizedBox(height: 0),
            _buildSubmitButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileAvatar() {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
    );
  }

  Widget _buildTextField(String label, {required String text}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
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
