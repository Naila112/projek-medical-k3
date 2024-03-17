// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:medical_app/pegawai/dialogs/alertDialog.dart';

// // ignore: must_be_immutable
// class NotificationBox extends StatefulWidget {
//   final String title;
//   final String content;
//   bool accepted;

//   NotificationBox({
//     super.key,
//     required this.title,
//     required this.content,
//     this.accepted = false,
//   });

//   @override
//   _NotificationBoxState createState() => _NotificationBoxState();
// }

// class _NotificationBoxState extends State<NotificationBox> {
//   bool isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isExpanded = !isExpanded;
//         });
//       },
//       child: Container(
//         width: double.infinity,
//         height: 152,
//         padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
//         decoration: const BoxDecoration(
//           border: Border(
//             bottom: BorderSide(color: Color.fromARGB(52, 0, 0, 0)),
//             top: BorderSide(color: Color.fromARGB(52, 0, 0, 0)),
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.circle_rounded,
//                   size: 20,
//                   color: widget.accepted ? Colors.green : Colors.red,
//                 ),
//                 const SizedBox(width: 15),
//                 Text(
//                   widget.title,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 17,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             Text(
//               isExpanded ? widget.content : widget.content,
//               style: const TextStyle(
//                 color: Colors.black87,
//                 fontSize: 15,
//               ),
//               textAlign: TextAlign.justify,
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: CupertinoButton(
//                 onPressed: () {
//                   if (widget.accepted) {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialogWidget(
//                           onAccept: () {
//                             setState(() {
//                               widget.accepted = false;
//                             });
//                             Navigator.of(context).pop();
//                           },
//                           onCancel: () {
//                             Navigator.of(context).pop();
//                           },
//                         );
//                       },
//                     );
//                   } else {
//                     setState(() {
//                       widget.accepted = true;
//                     });
//                   }
//                 },
//                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//                 child: Text(
//                   widget.accepted ? 'Accepted' : 'Add',
//                   style: TextStyle(
//                     color: widget.accepted ? Colors.green : Colors.blue,
//                     fontSize: 15,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
