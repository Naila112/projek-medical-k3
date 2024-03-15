// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// class CalendarScreen extends StatelessWidget {
//   const CalendarScreen({super.key});


// class CalendarScreen extends StatelessWidget {
//   const CalendarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calendar Bottom Sheet'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//               builder: (context) => CalendarBottomSheet(),
//             );
//           },
//           child: Text('Show Calendar'),
//         ),
//       ),
//     );
//   }
// }

// class CalendarBottomSheet extends StatelessWidget {
//   const CalendarBottomSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onVerticalDragUpdate: (details) {
//         if (details.primaryDelta! < -5) {
//           Navigator.pop(context);
//         }
//       },
//       child: DraggableScrollableSheet(
//         initialChildSize: 0.6,
//         minChildSize: 0.1,
//         maxChildSize: 1.0,
//         builder: (BuildContext context, ScrollController scrollController) {
//           return Container(
//             color: Colors.white,
//             child: Column(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[300],
//                       borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//                     ),
//                     child: TableCalendar(
//                       firstDay: DateTime.utc(2022, 1, 1),
//                       lastDay: DateTime.utc(2030, 12, 31),
//                       focusedDay: DateTime.now(),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
