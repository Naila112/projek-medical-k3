import 'package:flutter/material.dart';

class NotificationToggle extends StatefulWidget {
  const NotificationToggle({Key? key}) : super(key: key);

  @override
  _NotificationToggleState createState() => _NotificationToggleState();
}

class _NotificationToggleState extends State<NotificationToggle> {
  bool _notificationOn = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _notificationOn ? Icons.toggle_on_outlined : Icons.toggle_off_outlined,
        color: _notificationOn ? Colors.blue : Colors.grey,
        size: 30,
      ),
      onPressed: () {
        _showConfirmationDialog(context);
      },
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    String confirmationTitle =
        _notificationOn ? "Disable notifications?" : "Enable notifications?";
    String confirmationMessage = _notificationOn
        ? "Do you want to disable notifications?"
        : "Do you want to enable notifications?";
    String actionText = _notificationOn ? "Disable" : "Enable";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.white,
          title: Text(
            confirmationTitle,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            confirmationMessage,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  _notificationOn = !_notificationOn; // Toggle button status
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                actionText,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                "No",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
