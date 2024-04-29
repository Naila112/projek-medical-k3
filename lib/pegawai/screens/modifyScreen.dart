import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/profile/datakaryawanScreen.dart';

class ModifyScreen extends StatelessWidget {
  const ModifyScreen({super.key});

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
            _buildSectionTitle('General'),
            const SizedBox(height: 20),
            _buildTextField('Full Name', initialValue: 'Naila'),
            _buildTextField('ID Number', initialValue: '123456'),
            _buildDateOfBirthField(context),
            _buildDropdownField('Gender',
                initialValue: 'Perempuan', items: ['Laki-laki', 'Perempuan']),
            _buildTextField('City/District', initialValue: 'Lhokseumawe'),
            const SizedBox(height: 30),
            _buildSectionTitle('Contact Details'),
            const SizedBox(height: 20),
            _buildTextField('Phone Number', initialValue: '089523355346'),
            _buildTextField('Email', initialValue: 'naila@gmail.com'),
            const SizedBox(height: 0),
            _buildSubmitButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
    );
  }

  Widget _buildTextField(String label, {required String initialValue}) {
    TextEditingController controller =
        TextEditingController(text: initialValue);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildDropdownField(String label,
      {required String initialValue, required List<String> items}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: initialValue,
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Update the selected value
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DataKaryawanScreen()),
          );
        },
        child: const Text(
          'Save',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
