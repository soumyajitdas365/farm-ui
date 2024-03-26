import 'package:farm_ui/Screens/CropSchedule/specific_plot.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CropScheduleMyPlot extends StatefulWidget {
  const CropScheduleMyPlot({super.key});

  @override
  State<CropScheduleMyPlot> createState() => _CropScheduleMyPlotState();
}

class _CropScheduleMyPlotState extends State<CropScheduleMyPlot> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Crop Schedule",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Plots",
              style: TextStyle(
                fontSize: 18 * widthP,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            Gap(14),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 190,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SpecificPlot(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0XFFEAECF0),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0XFFEAECF0),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Image.asset("assets/images/farm.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                    Spacer(),
                                    Icon(Icons.arrow_forward),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
