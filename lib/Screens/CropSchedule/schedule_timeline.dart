import 'package:easy_date_timeline/easy_date_timeline.dart';
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
  final EasyInfiniteDateTimelineController _controller =
      EasyInfiniteDateTimelineController();

  int? selected_value;
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
            EasyDateTimeLine(
              itemBuilder: (context, dayNumber, dayName, monthName, fullDate,
                  isSelected) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(dayName),
                      Text(dayNumber),
                      Text(monthName),
                    ],
                  ),
                );
              },
              // controller: _controller,
              // firstDate: DateTime(2023),
              // focusDate: DateTime.now(),
              // lastDate: DateTime(2033, 12, 31),
              onDateChange: (selectedDate) {
                // setState(() {
                //   _focusDate = selectedDate;
                // });
              },
              initialDate: DateTime.now(),
            ),
            Gap(12),
            Column(
              children: [
                _buildRadioCard(
                  onTap: () {
                    setState(() {
                      if (!(selected_value == 0)) {
                        selected_value = 0;
                      } else {
                        selected_value = null;
                      }
                    });
                  },
                  cardTap: () {},
                  value: selected_value == 0,
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
                    setState(() {
                      if (!(selected_value == 1)) {
                        selected_value = 1;
                      } else {
                        selected_value = null;
                      }
                    });
                  },
                  cardTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Irrigation(),
                      ),
                    );
                  },
                  value: selected_value == 1,
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
    // required int index,

    required bool value,
    required String title,
    required String tileText,
    required String subtitle,
    required String? image1,
    required String? image2,
    required String? image3,
    required VoidCallback? cardTap,
    required VoidCallback? onTap,
  }) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                  color: value
                      ? Colors.transparent
                      : Color.fromARGB(255, 51, 174, 55).withOpacity(0.5)),
              shape: BoxShape.circle,
              color: value ? primaryColor : Colors.transparent,
            ),
            child: Icon(
              Icons.done,
              color: white,
            ),
          ),
        ),
        Gap(10),
        Expanded(
          child: RadioCardSchedule(
            onTap: cardTap,
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
