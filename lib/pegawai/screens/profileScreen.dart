import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/dialogs/logoutDialog.dart';

class ProfileScreen extends StatelessWidget {
  final String _fullName;
  final String _idNumber;
  final String _dateOfBirth;
  final String _gender;
  final String _city;
  final String _phoneNumber;
  final String _email;

  const ProfileScreen({
    super.key,
    required String fullName,
    required String idNumber,
    required String dateOfBirth,
    required String gender,
    required String city,
    required String phoneNumber,
    required String email,
  })  : _fullName = fullName,
        _idNumber = idNumber,
        _dateOfBirth = dateOfBirth,
        _gender = gender,
        _city = city,
        _phoneNumber = phoneNumber,
        _email = email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Profile'),
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
            _buildProfileInfo(),
            const SizedBox(height: 20),
            _buildProfileDetail('Date of Birth', text: _dateOfBirth),
            _buildProfileDetail('Gender', text: _gender),
            _buildProfileDetail('City/District', text: _city),
            _buildProfileDetail('Phone Number', text: _phoneNumber),
            _buildProfileDetail('Email', text: _email),
            buildSubmitButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfo({
    String imageUrl =
        'https://placehold.co/64x64', // URL default jika tidak ada gambar yang diunggah
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _fullName,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 5),
            Text(
              'ID: $_idNumber',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileDetail(String label, {required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 8),
          Container(
            constraints:
                const BoxConstraints(minWidth: double.infinity, minHeight: 24),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade400),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const LogOutDialog();
            },
          );
        },
        child: const Text(
          'Log Out',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ),
    );
  }
}
