import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationBox extends StatefulWidget {
  final String title;
  final String content;
  bool accepted;

  NotificationBox({
    super.key,
    required this.title,
    required this.content,
    this.accepted = false,
  });

  @override
  _NotificationBoxState createState() => _NotificationBoxState();
}

class _NotificationBoxState extends State<NotificationBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        width: double.infinity,
        height: 140,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
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
              isExpanded
                  ? widget.content
                  : (widget.content.length > 50
                      ? "${widget.content.substring(0, 50)}..."
                      : widget.content),
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: CupertinoButton(
                onPressed: () {
                  if (widget.accepted) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
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
                              onPressed: () {
                                setState(() {
                                  widget.accepted = false;
                                });
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "No",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    setState(() {
                      widget.accepted = true;
                    });
                  }
                },
                padding: EdgeInsets.zero,
                child: Text(
                  widget.accepted ? 'Accepted' : 'Add',
                  style: TextStyle(
                    color: widget.accepted ? Colors.green : Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
