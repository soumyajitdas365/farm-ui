import 'package:farm_ui/Screens/MyFarm/my_farm_home.dart';
import 'package:farm_ui/Screens/PaymentFlow/crop_schedule.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:flutter/material.dart';

import 'Screens/CropSchedule/schedule_calendar.dart';
import 'Screens/CropSchedule/schedule_timeline.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: white),
      home: ScheduleTimeline(),
    );
  }
}
