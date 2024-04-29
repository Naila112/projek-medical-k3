import 'package:flutter/material.dart';

class EmployeeProvider extends ChangeNotifier {
  late Employee _employee;

  Employee get employee => _employee;

  void setEmployee(Employee newEmployee) {
    _employee = newEmployee;
    notifyListeners();
  }
}

class Employee {
  final String fullName;
  final String idNumber;
  final String dateOfBirth;
  final String gender;
  final String city;
  final String phoneNumber;
  final String email;

  Employee({
    required this.fullName,
    required this.idNumber,
    required this.dateOfBirth,
    required this.gender,
    required this.city,
    required this.phoneNumber,
    required this.email,
  });
}
