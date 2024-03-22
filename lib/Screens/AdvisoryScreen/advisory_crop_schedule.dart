import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Screens/AdvisoryScreen/plot_name_advisory.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdvisoryCropSchedule extends StatefulWidget {
  const AdvisoryCropSchedule({super.key});

  @override
  State<AdvisoryCropSchedule> createState() => _AdvisoryCropScheduleState();
}

class _AdvisoryCropScheduleState extends State<AdvisoryCropSchedule> {
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
          "Crop Schedule",
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
              "You haven’t subscribed to this!",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28 * widthP,
                  color: textColor),
            ),
            Gap(16),
            Text(
              textAlign: TextAlign.center,
              "Get a detailed schedule for your farm customized for your crop, region and soil culture. Get your crop schedule now!",
              style: TextStyle(color: secondaryTextColor),
            ),
            Gap(48),
            FarmButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PlotNameAdvisory(),
                    ),
                  );
                },
                text: "Get Crop Schedule")
          ],
        ),
      ),
    );
  }
}
