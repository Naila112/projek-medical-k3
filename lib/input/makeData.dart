import 'package:flutter/material.dart';

/// Upcoming Appointments
class Appointments {
  final String date;
  final String time;
  final String title;
  final String subTitle;
  final Color color;

  Appointments({
    required this.color,
    required this.date,
    required this.time,
    required this.title,
    required this.subTitle,
  });
}

// Upcoming Appointments List OF DATA
List<Appointments> upcomingAppointmentsList = [
  Appointments(
    date: "12\nTue",
    time: "10.00 am",
    title: "Dr. Mutia",
    subTitle: " ",
    color: const Color(0xFFFFFFFF),
  ),
  Appointments(
    date: "12\nTue",
    time: "10.00 am",
    title: "Dr. Naila",
    subTitle: " ",
    color: const Color(0xFFFFFFFF),
  ),
];

/// User Acount
class User {
  final String name;
  final String email;
  final String imageUrl;
  final String bio;

  User({
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.bio,
  });
}
