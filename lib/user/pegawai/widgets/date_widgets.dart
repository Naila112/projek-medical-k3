import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget buildDateSection(BuildContext context) {
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
              DateFormat('MMMM, yyyy').format(now),
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
        const SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 7; i++)
              buildDayBox(
                day: daysOfMonth[i],
                dayName: daysInEnglish[i],
                isToday: daysOfMonth[i] == now.day,
                context: context,
              ),
          ],
        ),
      ],
    ),
  );
}

Widget buildDayBox({
  required int day,
  required String dayName,
  required bool isToday,
  required BuildContext context,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: isToday ? 1 : 1),
    width: isToday ? 50 : 50,
    height: 100,
    // padding: const EdgeInsets.only(top: 3, left: 3),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(color: Colors.black, width: 1.5),
    ),
    child: MaterialButton(
      minWidth: double.infinity,
      height: 10,
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const SignupPage(),
        //   ),
        // );
      },
      color: isToday ? const Color(0xFFB0C3FF) : null,
      elevation: isToday ? 0 : 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      // decoration: BoxDecoration(
      //   color: isToday ? Colors.yellow[600] : null,
      //   borderRadius: BorderRadius.circular(isToday ? 20 : 10),
      //   boxShadow: [
      //     if (isToday)
      //       BoxShadow(
      //         color: Colors.black.withOpacity(0.3),
      //         spreadRadius: 1,
      //         blurRadius: 10,
      //         offset: const Offset(3, 5),
      //       ),
      //   ],
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day.toString(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
              fontSize: 17,
            ),
          ),
          Text(
            dayName,
            style: TextStyle(
              color: Colors.black,
              fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
    ),
  );
}

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
