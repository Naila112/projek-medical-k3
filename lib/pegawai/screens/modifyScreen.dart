import 'package:flutter/material.dart';

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
        title: const Text('Modify'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
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
            _buildTextField('Full Name', controller: _fullNameController),
            _buildTextField('ID Number', controller: _idNumberController),
            _buildDateOfBirthField(context),
            _buildDropdownField('Gender',
                controller: _genderController, items: ['Male', 'Female']),
            _buildTextField('City/District', controller: _cityController),
            const SizedBox(height: 30),
            _buildSectionTitle('Contact Details'),
            const SizedBox(height: 20),
            _buildTextField('Phone Number', controller: _phoneNumberController),
            _buildTextField('Email', controller: _emailController),
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

  Widget _buildTextField(String label,
      {required TextEditingController controller}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.all(12.0),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildDropdownField(String label,
      {required TextEditingController controller,
      required List<String> items}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: controller.text,
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Update the selected value
            controller.text = value ?? '';
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.all(12.0),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildDateOfBirthField(BuildContext context) {
    TextEditingController controller =
        TextEditingController(text: '07/07/2007');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Date of Birth',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            _selectDate(context, controller);
          },
          child: AbsorbPointer(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.all(12.0),
                suffixIcon: const Icon(Icons.calendar_today),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      print('Selected date: $picked');
      // Update the value of Date of Birth
      String formattedDate = "${picked.day}/${picked.month}/${picked.year}";
      controller.text = formattedDate;
    }
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
