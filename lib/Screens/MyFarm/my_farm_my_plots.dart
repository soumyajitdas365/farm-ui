import 'package:dotted_border/dotted_border.dart';
import 'package:farm_ui/Screens/MyFarm/my_farm_name.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyFarmMyPlots extends StatefulWidget {
  const MyFarmMyPlots({super.key});

  @override
  State<MyFarmMyPlots> createState() => _MyFarmMyPlotsState();
}

class _MyFarmMyPlotsState extends State<MyFarmMyPlots> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Plots",
          style: TextStyle(
              fontSize: 24 * widthP,
              fontWeight: FontWeight.w600,
              color: textColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Registered Plot",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18 * widthP,
                  color: textColor),
            ),
            Gap(14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyFarmName(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: borderColor
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Image.asset("assets/images/farm.png"),
                        ),
                        Text(
                          "Farm Name",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 12 * widthP,
                                color: secondaryTextColor,
                              ),
                            ),
                            // Spacer(),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 180 * heightF,
                  width: 165 * widthP,
                  child: DottedBorder(
                    color: Colors.grey,
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    dashPattern: [8, 8],
                    child: Center(
                      child: Text("Upload Screenshot"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
