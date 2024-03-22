import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Screens/AdvisoryScreen/chat_screen.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlotNameAdvisory extends StatefulWidget {
  const PlotNameAdvisory({super.key});

  @override
  State<PlotNameAdvisory> createState() => _PlotNameAdvisoryState();
}

class _PlotNameAdvisoryState extends State<PlotNameAdvisory> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 2),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/profilepic.png",
                width: double.infinity,
              ),
            ),
            Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Plot Name - Advisory",
                  style: TextStyle(
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                Text(
                  "online",
                  style: TextStyle(
                      fontSize: 12 * widthP, color: secondaryTextColor),
                ),
              ],
            ),
          ],
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
              "To get detailed advisory for your farm, please subscribe any one Advisory Plan",
              style: TextStyle(color: secondaryTextColor),
            ),
            Gap(48),
            FarmButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatScreen(),
                    ),
                  );
                },
                text: "Get Advisory Plan")
          ],
        ),
      ),
    );
  }
}
