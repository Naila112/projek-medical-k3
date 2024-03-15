import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/user/pegawai/widgets/date_widgets.dart';

import '../../../size_config.dart';

Widget buildUpcomingAppointments(BuildContext context) {
  SizeConfig().init(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        child: Text(
          "Upcoming Appointments",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
            fontSize: 20,
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 28),
        child: Row(
          children: upcomingAppointmentsList.map((e) {
            return CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                height: 130,
                width: 320,
                decoration: BoxDecoration(
                  color: e.color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: 71,
                      height: 99,
                      decoration: BoxDecoration(
                        color: const Color(0xFFB0C3FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e.date,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          e.time,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    letterSpacing: 1,
                                    color: Colors.black,
                                  ),
                        ),
                        Text(
                          e.title,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    height: 1.8,
                                    letterSpacing: 1,
                                  ),
                        ),
                        Text(
                          e.subTitle,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    letterSpacing: 1,
                                    height: 1.8,
                                    color: Colors.black54,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ],
  );
}
