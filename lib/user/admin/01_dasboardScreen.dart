import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardScreen1 extends StatelessWidget {
  const DashboardScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextBox(context),
            // const SizedBox(height: 10),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10, // Set horizontal spacing between boxes
                children: [
                  buildContentBox(
                    image: 'assets/icon/treatment.png',
                    text: 'Data\nPegawai',
                    onPressed: () {
                      // Add logic for this function
                    },
                  ),
                  buildContentBox(
                    image: 'assets/icon/calendar-plus.png',
                    text: 'Schedule\nCheck-Up',
                    onPressed: () {
                      // Add logic for this function
                    },
                  ),
                  buildContentBox(
                    image: 'assets/icon/stethoscope.png',
                    text: 'Medical\nRecord',
                    onPressed: () {
                      // Add logic for this function
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40), // Add bottom spacing here
          ],
        ),
      ),
    );
  }

  Widget buildTextBox(BuildContext context,
      {DateTime? now, String username = 'Admin'}) {
    now ??= DateTime.now();

    return Container(
      padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('MMMM dd, yyyy').format(now),
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Add logic to display menu here
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            username,
            style: const TextStyle(
              fontSize: 30,
              color: Color(0xFF3658C1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContentBox({
    required String image,
    required String text,
    required VoidCallback onPressed,
  }) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        // margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        padding: const EdgeInsets.all(30),
        width: 230,
        decoration: BoxDecoration(
          color: const Color(0xFFB0C3FF),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black45, width: 1.5),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
