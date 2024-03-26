import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Components/custom_text_field.dart';
import 'package:farm_ui/Screens/CropSchedule/crop_schedule_my_plot.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CropScheduleRegisteredPlot extends StatefulWidget {
  const CropScheduleRegisteredPlot({super.key});

  @override
  State<CropScheduleRegisteredPlot> createState() => _CropScheduleRegisteredPlotState();
}

class _CropScheduleRegisteredPlotState extends State<CropScheduleRegisteredPlot> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Registered Plot",
          style: TextStyle(
              fontSize: 24 * widthP,
              fontWeight: FontWeight.w600,
              color: textColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose a Plot Icon",
                style: TextStyle(
                  fontSize: 18 * widthP,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
              Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FarmButton(
                    onTap: () {},
                    text: "Take a photo",
                    width: 165 * widthP,
                  ),
                  FarmButton(
                    onTap: () {},
                    text: "Gallery",
                    width: 165 * widthP,
                  ),
                ],
              ),
              Gap(28),
              Text(
                "Add your first plot",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: textColor,
                    fontSize: 18 * widthP),
              ),
              Gap(12),
              CustomTextField(
                labelText: "Name of Plot",
                prefixIcon: Icon(
                  Icons.person_outlined,
                  color: Color(0XFFADB4C0),
                ),
              ),
              Gap(12),
              CustomTextField(
                labelText: "GPS Location",
                suffixIcon: Icon(
                  Icons.location_on,
                  color: primaryColor,
                ),
              ),
              Gap(12),
              CustomTextField(
                labelText: "Plot Address",
                prefixIcon: Icon(
                  Icons.person_outlined,
                  color: Color(0XFFADB4C0),
                ),
              ),
              Gap(12),
              CustomTextField(
                labelText: "Plot Area",
              ),
              Gap(12),
              CustomTextField(
                labelText: "First Irrigation Date",
              ),
              Gap(12),
              CustomTextField(
                labelText: "Days from First Irrigation Date",
              ),
              Gap(12),
              CustomTextField(
                labelText: "Crop Stage",
              ),
              Gap(12),
              Text(
                "Main Crop",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18 * widthP,
                  color: textColor,
                ),
              ),
              Gap(12),
              FarmButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CropScheduleMyPlot(),
                      ),
                    );
                  },
                  text: "Proceed")
            ],
          ),
        ),
      ),
    );
  }
}
