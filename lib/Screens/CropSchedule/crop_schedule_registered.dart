import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Screens/CropSchedule/crop_schedule_registered_plot.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CropscheduleRegistered extends StatefulWidget {
  const CropscheduleRegistered({super.key});

  @override
  State<CropscheduleRegistered> createState() => _CropscheduleRegisteredState();
}

class _CropscheduleRegisteredState extends State<CropscheduleRegistered> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Advisory",
          style: TextStyle(
            fontSize: 24 * widthP,
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/images/leaf.png"),
            Gap(25),
            Text(
              textAlign: TextAlign.center,
              "You dont have any farm registered with Us",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28 * widthP,
                  color: textColor),
            ),
            Gap(16),
            Text(
              textAlign: TextAlign.center,
              "Register your farm to get crop advisory and other resources related to your farm and crops that are grown.",
              style: TextStyle(color: secondaryTextColor),
            ),
            Gap(48),
            FarmButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CropScheduleRegisteredPlot(),
                    ),
                  );
                },
                text: "Add your first plot")
          ],
        ),
      ),
    );
  }
}
