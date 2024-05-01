// import 'package:flutter/material.dart';

// class Employee {
//   String fullName;
//   String idNumber;
//   String dateOfBirth;
//   String gender;
//   String city;
//   String phoneNumber;
//   String email;

//   Employee({
//     required this.fullName,
//     required this.idNumber,
//     required this.dateOfBirth,
//     required this.gender,
//     required this.city,
//     required this.phoneNumber,
//     required this.email,
//   });
// }

// class EmployeeProvider with ChangeNotifier {
//   final List<Employee> _employees = [
//     Employee(
//       fullName: 'Naila',
//       idNumber: '123456',
//       dateOfBirth: '07/07/2007',
//       gender: 'Female',
//       city: 'Lhokseumawe',
//       phoneNumber: '089523355346',
//       email: 'naila@gmail.com',
//     ),
//   ];

//   List<Employee> get employees => _employees;

//   void updateEmployeeData(int index, Employee updatedEmployee) {
//     _employees[index] = updatedEmployee;
//     notifyListeners(); // Notify listeners about the change
//   }
// }
