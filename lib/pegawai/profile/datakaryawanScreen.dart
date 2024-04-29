import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/screens/dashboardScreen.dart';
import 'package:medical_app/pegawai/screens/modifyScreen.dart';

class DataKaryawanScreen extends StatelessWidget {
  const DataKaryawanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Pegawai'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DashboardScreen(),
              ),
            );
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
            _buildTextField('Full Name', text: 'Naila'),
            _buildTextField('ID Number', text: '123456'),
            _buildTextField('Date of Birth', text: '07/07/2007'),
            _buildTextField('Gender', text: 'Perempuan'),
            _buildTextField('City/District', text: 'Lhokseumawe'),
            const SizedBox(height: 30),
            _buildSectionTitle('Contact Details'),
            const SizedBox(height: 20),
            _buildTextField('Phone Number', text: '089523355346'),
            _buildTextField('Email', text: 'naila@gmail.com'),
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

  Widget _buildTextField(String label, {required String text}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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

  // Fungsi untuk membuat tombol "Modify" dan menavigasi ke ProfileScreen
  Widget _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const ModifyScreen()), // Panggil ProfileScreen saat tombol ditekan
          );
        },
        child: const Text(
          'Modify',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ),
    );
  }
}
