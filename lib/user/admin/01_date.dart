import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget buildDate1(BuildContext context) {
  DateTime now = DateTime.now();
  DateTime firstDayOfMonth =
      DateTime(now.year, now.month, now.day - now.weekday + 1);
  List<String> daysInEnglish = [];
  List<int> daysOfMonth = [];
  for (int i = 1; i <= 7; i++) {
    daysOfMonth.add(firstDayOfMonth.day + i - 1);
    DateTime currentDay = firstDayOfMonth.add(Duration(days: i - 1));
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
              DateFormat('MMMM, dddd, yyyy').format(now),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // CupertinoButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => const CalendarScreen()),
            //     );
            //   },
            //   child: const Icon(
            //     Icons.arrow_drop_down,
            //     size: 30,
            //     color: Colors.black,
            //   ),
            // ),
          ],
        ),
      ],
    ),
  );
}
