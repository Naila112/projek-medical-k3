import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/screens/calenderScreen.dart';

Widget buildDateSection(BuildContext context) {
  DateTime now = DateTime.now();
  DateTime firstDayOfMonth =
      DateTime(now.year, now.month, now.day - now.weekday + 1);
  List<String> daysInEnglish = [];
  List<int> daysOfMonth = [];
  for (int i = 1; i <= 7; i++) {
    // Changed loop starting from 1 for Monday
    daysOfMonth
        .add(firstDayOfMonth.day + i - 1); // Adjusted index to start from 0
    DateTime currentDay = firstDayOfMonth
        .add(Duration(days: i - 1)); // Adjusted index to start from 0
    daysInEnglish.add(DateFormat('E').format(currentDay));
  }

  return Padding(
    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat('MMMM, yyyy').format(now),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CalendarScreen()),
                );
              },
              child: const Icon(
                Icons.arrow_drop_down,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 7; i++) // Adjusted loop to iterate for 7 days
              buildDayBox(
                daysOfMonth[i], // Passing the day of the month
                daysInEnglish[i],
                daysOfMonth[i] == now.day,
                context,
              ),
          ],
        ),
      ],
    ),
  );
}

Widget buildDayBox(
    int day, String dayName, bool isToday, BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: isToday ? 3 : 5),
    width: isToday ? 40 : 50,
    height: 100,
    decoration: BoxDecoration(
      color: isToday ? Colors.yellow[600] : null,
      borderRadius: BorderRadius.circular(isToday ? 20 : 10),
      boxShadow: [
        if (isToday)
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(3, 5),
          ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          day.toString(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: isToday ? FontWeight.bold : FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          dayName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    ),
  );
}
