import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  final VoidCallback onAccept;
  final VoidCallback onCancel;

  const AlertDialogWidget({
    super.key,
    required this.onAccept,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.white,
      title: const Text(
        "Cancel Accepted",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const Text(
        "Are you sure you want to cancel this notification?",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: onAccept,
          child: const Text(
            "Yes",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: onCancel,
          child: const Text(
            "No",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
