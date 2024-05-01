import 'package:flutter/material.dart';

import 'modifyBuild/DateOfBirthField.dart';
import 'modifyBuild/DropdownField.dart';
import 'modifyBuild/ProfileAvatar.dart';
import 'modifyBuild/SectionTitle.dart';
import 'modifyBuild/TextField.dart';

class ModifyScreen extends StatefulWidget {
  final String fullName;
  final String idNumber;
  final String dateOfBirth;
  final String gender;
  final String city;
  final String phoneNumber;
  final String email;

  const ModifyScreen({
    super.key,
    required this.fullName,
    required this.idNumber,
    required this.dateOfBirth,
    required this.gender,
    required this.city,
    required this.phoneNumber,
    required this.email,
  });

  @override
  _ModifyScreenState createState() => _ModifyScreenState();
}

class _ModifyScreenState extends State<ModifyScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _idNumberController;
  late TextEditingController _dateOfBirthController;
  late TextEditingController _genderController;
  late TextEditingController _cityController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: widget.fullName);
    _idNumberController = TextEditingController(text: widget.idNumber);
    _dateOfBirthController = TextEditingController(text: widget.dateOfBirth);
    _genderController = TextEditingController(text: widget.gender);
    _cityController = TextEditingController(text: widget.city);
    _phoneNumberController = TextEditingController(text: widget.phoneNumber);
    _emailController = TextEditingController(text: widget.email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Modify'),
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
            buildTextField('Full Name', controller: _fullNameController),
            buildTextField('ID Number', controller: _idNumberController),
            buildDateOfBirthField(context),
            buildDropdownField('Gender',
                controller: _genderController, items: ['Male', 'Female']),
            buildTextField('City/District', controller: _cityController),
            const SizedBox(height: 30),
            buildSectionTitle('Contact Details'),
            const SizedBox(height: 20),
            buildTextField('Phone Number', controller: _phoneNumberController),
            buildTextField('Email', controller: _emailController),
            const SizedBox(height: 0),
            _buildSubmitButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context, {
            'fullName': _fullNameController.text,
            'idNumber': _idNumberController.text,
            'dateOfBirth': _dateOfBirthController.text,
            'gender': _genderController.text,
            'city': _cityController.text,
            'phoneNumber': _phoneNumberController.text,
            'email': _emailController.text,
          });
        },
        child: const Text(
          'Save',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ),
    );
  }
}
