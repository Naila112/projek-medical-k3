import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget buildDateSection(BuildContext context) {
  DateTime now = DateTime.now();

  // Atur tanggal dari tanggal 1 sampai akhir bulan Mei
  DateTime firstDayOfMonth = DateTime.utc(now.year, now.month, 1);
  DateTime lastDayOfMonth = DateTime.utc(now.year, now.month + 1, 0);

  // Atur hari-hari dalam seminggu dalam bahasa Inggris
  List<String> daysInEnglish = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];
  List<int> daysOfMonth = [];

  // Loop untuk mengisi tanggal dan hari-hari
  for (int i = 0; i < 7; i++) {
    DateTime currentDate = firstDayOfMonth.add(Duration(days: i));
    if (currentDate.isBefore(lastDayOfMonth)) {
      daysOfMonth.add(currentDate.day);
    } else {
      daysOfMonth.add(0);
    }
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
