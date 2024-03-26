import 'package:farm_ui/Components/radio_card_schedule.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleTimeline extends StatefulWidget {
  const ScheduleTimeline({super.key});

  @override
  State<ScheduleTimeline> createState() => _ScheduleTimelineState();
}

class _ScheduleTimelineState extends State<ScheduleTimeline> {
  bool isTicked = false;
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Schedule",
          style: TextStyle(
            fontSize: 24 * widthP,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TableCalendar(
              headerStyle: HeaderStyle(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0XFFEAECF0),
                  ),
                ),
                titleCentered: true,
                titleTextStyle: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                ),
                formatButtonVisible: false,
              ),
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                tableBorder: TableBorder.symmetric(
                  outside: BorderSide(
                    color: Color(0XFFEAECF0),
                  ),
                ),
                todayDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: primaryColor,
                ),
                defaultTextStyle: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
                weekendTextStyle: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              calendarFormat: CalendarFormat.week,
            ),
            Gap(12),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isTicked = !isTicked;
                        });
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          // border: Border.all(
                          //   color: Color(0XFF7D9948),
                          // ),
                        ),
                        child: isTicked
                            ? Icon(Icons.check_circle, color: primaryColor)
                            : null,
                      ),
                    ),
                    Gap(10),
                    Expanded(
                      child: RadioCardSchedule(
                        title: "Irrigation",
                        tileText: "Drip",
                        subtitle:
                            "The irrigation is to be given after Field Capacity of the Soil.\nThe irrigation should be given up to 1 to 1.5 feet deep.",
                      ),
                    ),
                  ],
                ),
                Gap(12),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Color(0XFF7D9948),
                        ),
                      ),
                    ),
                    Gap(10),
                    Expanded(
                      child: RadioCardSchedule(
                        title: "Irrigation",
                        tileText: "Drip",
                        subtitle:
                            "The irrigation is to be given after Field Capacity of the Soil.\nThe irrigation should be given up to 1 to 1.5 feet deep.",
                        image1: "assets/images/farm_shovel.jpg",
                        image2: "assets/images/farm_shovel.jpg",
                        image3: "assets/images/farm_shovel.jpg",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
