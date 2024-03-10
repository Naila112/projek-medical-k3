import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.music_note),
                        title: Text('Music'),
                        onTap: () {
                          // Do something
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.photo),
                        title: Text('Photos'),
                        onTap: () {
                          // Do something
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.videocam),
                        title: Text('Video'),
                        onTap: () {
                          // Do something
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text('Open Bottom Sheet'),
        ),
      ),
    );
  }
}
