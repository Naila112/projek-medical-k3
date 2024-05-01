import 'package:flutter/material.dart';

Widget buildDateOfBirthField(BuildContext context) {
  TextEditingController controller = TextEditingController(text: '07/07/2007');

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
