import 'package:farm_ui/Screens/CropSchedule/schedule_calendar.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SpecificPlot extends StatefulWidget {
  const SpecificPlot({super.key});

  @override
  State<SpecificPlot> createState() => _SpecificPlotState();
}

class _SpecificPlotState extends State<SpecificPlot> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 417 * heightF,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                image: DecorationImage(
                    image: AssetImage("assets/images/coverpic.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Plot 1",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 24 * widthP),
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                      color: secondaryTextColor,
                    ),
                  ),
                  Gap(28),
                  Text(
                    "Crop Planted",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18 * widthP),
                  ),
                  Gap(12),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      side: BorderSide(
                        color: borderColor
                      ),
                    ),
                    title: Text(
                      "Palak",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16 * widthP,
                      ),
                    ),
                    subtitle: Text(
                      "Main Crop",
                      style: TextStyle(
                        color: secondaryTextColor,
                        fontSize: 12 * widthP,
                      ),
                    ),
                    leading: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Color(0XFFFFF2E3),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("assets/crops/palak.png"),
                    ),
                  ),
                  Gap(21),
                  Text(
                    "Crop Schedule",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18 * widthP),
                  ),
                  Gap(12),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScheduleCalendar(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      side: BorderSide(
                        color: borderColor
                      ),
                    ),
                    title: Text(
                      "March 22nd 2023 to  21st April 2023",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: textColor,
                          fontSize: 16 * widthP),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: primaryColor,
                    ),
                  ),
                  Gap(12),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      side: BorderSide(
                        color: borderColor
                      ),
                    ),
                    title: Text(
                      "Feb 19th 2023 to March 21st 2023",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: textColor,
                          fontSize: 16 * widthP),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: primaryColor,
                    ),
                  ),
                  Gap(12),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      side: BorderSide(
                        color: borderColor
                      ),
                    ),
                    title: Text(
                      "Jan 19th 2023 to Feb 18th 2023",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: textColor,
                          fontSize: 16 * widthP),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: primaryColor,
                    ),
                  ),
                  Gap(28),
                  Text(
                    "Followed Practices",
                    style: TextStyle(
                      fontSize: 18 * widthP,
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gap(12),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ExpansionTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                              side: BorderSide(
                                color: borderColor
                              ),
                            ),
                            collapsedShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                              side: BorderSide(
                                color: borderColor
                              ),
                            ),
                            initiallyExpanded: false,
                            title: Text("Drip"),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Text(
                                  "Drip irrigation involves delivering water in controlled drops directly to plants' root zones, conserving water and promoting efficient plant growth.",
                                  style: TextStyle(
                                    color: secondaryTextColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Gap(12),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
