import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/dashboard/calenderScreen.dart';

import '../nav/navigator.dart';

final DateTime now = DateTime.now();
final DateFormat dateFormat = DateFormat('MMMM, yyyy');
final String formattedDate = dateFormat.format(now);
final List<String> daysInEnglish = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
  'Sun'
];

// Memuat bulan dan tahun
Widget buildDate(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 40, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formattedDate,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 70),
      ],
    ),
  );
}

// Memuat tanggal dan hari
Widget buildDayRow(BuildContext context) {
  return GestureDetector(
    onTap: () {
      PageNavigator.scaleToPage(context, const CalendarScreen());
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EasyDateTimeLine(
          initialDate: DateTime.now(),
          onDateChange: (selectedDate) {
            //[selectedDate] the new date selected.
          },
          activeColor: const Color(0xff85A389),
          dayProps: const EasyDayProps(
            todayHighlightStyle: TodayHighlightStyle.withBackground,
            todayHighlightColor: Color(0xffE1ECC8),
          ),
        ),
      ],
    ),
  );
}

// Memuat box kuning
Widget buildYellowBox() {
  return const SizedBox(height: 20);
}

Widget buildDayBox(
    int index, String dayName, bool isToday, BuildContext context) {
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
          DateFormat('dd')
              .format(now.add(Duration(days: index - now.weekday + 1))),
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
