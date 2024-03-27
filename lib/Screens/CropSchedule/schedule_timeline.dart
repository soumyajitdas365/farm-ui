import 'package:farm_ui/Components/radio_card_schedule.dart';
import 'package:farm_ui/Screens/CropSchedule/irrigation.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleTimeline extends StatefulWidget {
  const ScheduleTimeline({Key? key}) : super(key: key);

  @override
  State<ScheduleTimeline> createState() => _ScheduleTimelineState();
}

class _ScheduleTimelineState extends State<ScheduleTimeline> {
  int _selectedOptionIndex = -1;

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
              calendarFormat: CalendarFormat.week,
            ),
            Gap(12),
            Column(
              children: [
                _buildRadioCard(
                  onTap: () {},
                  index: 0,
                  title: "Irrigation",
                  tileText: "Drip",
                  subtitle:
                      "The irrigation is to be given after Field Capacity of the Soil.\nThe irrigation should be given up to 1 to 1.5 feet deep.",
                  image1: null,
                  image2: null,
                  image3: null,
                ),
                Gap(12),
                _buildRadioCard(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Irrigation(),
                      ),
                    );
                  },
                  index: 1,
                  title: "Irrigation",
                  tileText: "Drip",
                  subtitle:
                      "The irrigation is to be given after Field Capacity of the Soil.\nThe irrigation should be given up to 1 to 1.5 feet deep.",
                  image1: "assets/images/farm_shovel.jpg",
                  image2: "assets/images/farm_shovel.jpg",
                  image3: "assets/images/farm_shovel.jpg",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioCard({
    required int index,
    required String title,
    required String tileText,
    required String subtitle,
    required String? image1,
    required String? image2,
    required String? image3,
    required VoidCallback? onTap,
  }) {
    return Row(
      children: [
        Radio(
          value: index,
          groupValue: _selectedOptionIndex,
          onChanged: (value) {
            setState(() {
              _selectedOptionIndex = value as int;
            });
          },
        ),
        Gap(10),
        Expanded(
          child: RadioCardSchedule(
            onTap: onTap,
            title: title,
            tileText: tileText,
            subtitle: subtitle,
            image1: image1,
            image2: image2,
            image3: image3,
          ),
        ),
      ],
    );
  }
}
