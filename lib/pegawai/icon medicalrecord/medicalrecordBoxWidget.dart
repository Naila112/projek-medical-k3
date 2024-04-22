import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/pegawai/dialogs/alertDialog.dart';

// ignore: must_be_immutable
class MedicalRecordBox extends StatefulWidget {
  final String title;
  final String content;
  bool accepted;

  MedicalRecordBox({
    super.key,
    required this.title,
    required this.content,
    this.accepted = false,
  });

  @override
  _MedicalRecordBoxState createState() => _MedicalRecordBoxState();
}

class _MedicalRecordBoxState extends State<MedicalRecordBox> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        width: double.infinity, // Apply width to the Container
        padding: const EdgeInsets.symmetric(
            horizontal: 30, vertical: 10), // Padding for the Container
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromARGB(52, 0, 0, 0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle_rounded,
                  size: 20,
                  color: widget.accepted ? Colors.green : Colors.red,
                ),
                const SizedBox(width: 15),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              isExpanded ? widget.content : widget.content,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: CupertinoButton(
            //     onPressed: () {
            //       if (widget.accepted) {
            //         showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return AlertDialogWidget(
            //               onAccept: () {
            //                 setState(() {
            //                   widget.accepted = false;
            //                 });
            //                 Navigator.of(context).pop();
            //               },
            //               onCancel: () {
            //                 Navigator.of(context).pop();
            //               },
            //             );
            //           },
            //         );
            //       } else {
            //         setState(() {
            //           widget.accepted = true;
            //         });
            //       }
            //     },
            //     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            //     child: Text(
            //       widget.accepted ? 'Accepted' : 'Add',
            //       style: TextStyle(
            //         color: widget.accepted ? Colors.green : Colors.blue,
            //         fontSize: 15,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
