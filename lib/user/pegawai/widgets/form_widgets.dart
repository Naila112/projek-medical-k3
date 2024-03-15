import 'package:flutter/material.dart';

// Email
Widget makeEmailInput(BuildContext context) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some email';
      }

      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value);
      if (!emailValid) {
        return 'Please enter a valid email';
      }

      return null;
    },
    decoration: const InputDecoration(
      labelText: 'Email',
      hintText: 'Enter your email',
      prefixIcon: Icon(Icons.email_outlined),
      border: OutlineInputBorder(),
    ),
  );
}

// Name
Widget makeNameInput(BuildContext context) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some name';
      }
      return null;
    },
    decoration: const InputDecoration(
      labelText: 'Name',
      hintText: 'Enter your name',
      prefixIcon: Icon(Icons.person_pin_outlined),
      border: OutlineInputBorder(),
    ),
  );
}

// Pass
Widget makePasswordInput(BuildContext context,
    {String? label,
    required bool isPasswordVisible,
    required VoidCallback onPressed}) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some password';
      }

      if (value.length < 6) {
        return 'Password must be at least 6 characters';
      }
      return null;
    },
    obscureText: !isPasswordVisible,
    decoration: InputDecoration(
      labelText: label ?? 'Password',
      hintText: 'Enter your password',
      prefixIcon: const Icon(Icons.lock_outline_rounded),
      border: const OutlineInputBorder(),
      suffixIcon: IconButton(
        icon: Icon(isPasswordVisible ? Icons.visibility_off : Icons.visibility),
        onPressed: onPressed,
      ),
    ),
  );
}

// ID
Widget makeIDInput(BuildContext context) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some ID Pegawai';
      }

      if (value.length < 6) {
        return 'ID Pegawai must be at least 6 characters';
      }
      return null;
    },
    obscureText: false,
    decoration: const InputDecoration(
      labelText: 'ID Pegawai',
      hintText: 'Enter your ID Pegawai',
      prefixIcon: Icon(Icons.lock_outline),
      border: OutlineInputBorder(),
    ),
  );
}
