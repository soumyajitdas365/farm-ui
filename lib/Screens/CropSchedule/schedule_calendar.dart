import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Screens/CropSchedule/schedule_timeline.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleCalendar extends StatefulWidget {
  const ScheduleCalendar({super.key});

  @override
  State<ScheduleCalendar> createState() => _ScheduleCalendarState();
}

class _ScheduleCalendarState extends State<ScheduleCalendar> {
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
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: borderColor
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
                    color: borderColor
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
            ),
            Gap(21),
            FarmButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScheduleTimeline(),
                    ),
                  );
                },
                text: "View")
          ],
        ),
      ),
    );
  }
}
