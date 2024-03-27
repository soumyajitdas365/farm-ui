import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Components/custom_text_field.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gap/gap.dart';

class MyFarmName extends StatefulWidget {
  const MyFarmName({super.key});

  @override
  State<MyFarmName> createState() => _MyFarmNameState();
}

class _MyFarmNameState extends State<MyFarmName>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Farm Name",
          style: TextStyle(
            fontSize: 24 * widthP,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Main Crop",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18 * widthP,
                  color: textColor,
                ),
              ),
              Gap(12),
              CustomTextField(
                labelText: "Carrot",
                prefixWidget: Image.asset('assets/crops/carrot.png'),
              ),
              Gap(15),
              CustomTextField(
                labelText: "Cucumber",
                prefixWidget: Image.asset('assets/crops/cucumber.png'),
              ),
              Gap(33),
              Text(
                "Schedule Plot for Buyer",
                style: TextStyle(
                  fontSize: 18 * widthP,
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(16),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: borderColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: <Widget>[
                    Tab(
                      child: Container(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "No",
                            style: TextStyle(
                                fontSize: 16 * widthP,
                                fontWeight: FontWeight.w600,
                                color: textColor),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "Yes",
                            style: TextStyle(
                                fontSize: 16 * widthP,
                                fontWeight: FontWeight.w600,
                                color: textColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(28),
              /////////////////////////////////////////////////////////////////////
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Suggested Next Crop",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18 * widthP,
                        color: textColor),
                  ),
                  Gap(12),
                  // SizedBox(
                  //   height: 100.0,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Expanded(
                  //         child: ListView.builder(
                  //           physics: NeverScrollableScrollPhysics(),
                  //           scrollDirection: Axis.horizontal,
                  //           itemCount: 3,
                  //           itemBuilder: (context, index) {
                  //             return Container(
                  //               margin: EdgeInsets.only(
                  //                 right: 20 * widthP,
                  //               ),
                  //               padding: EdgeInsets.only(
                  //                   top: 20 * heightF,
                  //                   left: 20 * widthP,
                  //                   right: 20 * widthP,
                  //                   bottom: 4 * heightF),
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(12),
                  //                 border: Border.all(
                  //                   color: borderColor
                  //                 ),
                  //               ),
                  //               child: Column(
                  //                 children: [
                  //                   Image.asset("assets/crops/tomato.png"),
                  //                   Text(
                  //                     "Tomato",
                  //                     style: TextStyle(
                  //                         color: secondaryTextColor,
                  //                         fontSize: 12 * widthP),
                  //                   ),
                  //                 ],
                  //               ),
                  //             );
                  //           },
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 20 * widthP,
                        ),
                        padding: EdgeInsets.only(
                            top: 20 * heightF,
                            left: 20 * widthP,
                            right: 20 * widthP,
                            bottom: 4 * heightF),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: borderColor),
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/crops/tomato.png"),
                            Text(
                              "Tomato",
                              style: TextStyle(
                                  color: secondaryTextColor,
                                  fontSize: 12 * widthP),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 20 * widthP,
                        ),
                        padding: EdgeInsets.only(
                            top: 20 * heightF,
                            left: 20 * widthP,
                            right: 20 * widthP,
                            bottom: 4 * heightF),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: borderColor),
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/crops/aubergine.png"),
                            Text(
                              "Brinjal",
                              style: TextStyle(
                                  color: secondaryTextColor,
                                  fontSize: 12 * widthP),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 20 * widthP,
                        ),
                        padding: EdgeInsets.only(
                            top: 20 * heightF,
                            left: 20 * widthP,
                            right: 20 * widthP,
                            bottom: 4 * heightF),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: borderColor),
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/crops/bellpepper.png"),
                            Text(
                              "Capsicum",
                              style: TextStyle(
                                  color: secondaryTextColor,
                                  fontSize: 12 * widthP),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(28),
                  Text(
                    "Farm Details",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18 * widthP,
                        color: textColor),
                  ),
                  Gap(12),
                  CustomTextField(labelText: "Plot Name"),
                  Gap(12),
                  CustomTextField(labelText: "Plot Address"),
                  Gap(12),
                  CustomTextField(labelText: "Plot Area"),
                  Gap(12),
                  CustomTextField(labelText: "First Irrigation Date"),
                  Gap(12),
                  CustomTextField(labelText: "First Irrigation Date"),
                  Gap(12),
                  CustomTextField(labelText: "Days from First Irrigation Date"),
                  Gap(12),
                  CustomTextField(labelText: "Crop Stage"),
                  Gap(28),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ScheduleCalendar(),
                      //   ),
                      // );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      side: BorderSide(color: borderColor),
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
                      side: BorderSide(color: borderColor),
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
                      side: BorderSide(color: borderColor),
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
                    "Advice Asked",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18 * widthP,
                      color: textColor,
                    ),
                  ),
                  Gap(16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: borderColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Root related problem",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18 * widthP,
                                    color: textColor),
                              ),
                              Spacer(),
                              Text(
                                "Active",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Gap(7),
                          Text(
                            "SC20221216133300",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16 * widthP,
                                color: textColor),
                          ),
                          Gap(10),
                          Text(
                            "Last updated on 9 May, 2023  01:33 pm",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: secondaryTextColor),
                          ),
                          Gap(14),
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  tileColor: primaryColor.withOpacity(0.5),
                                  shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(color: borderColor),
                                  ),
                                  title: Text(
                                    "Plot",
                                    style: TextStyle(
                                        color: secondaryTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12 * widthP),
                                  ),
                                  subtitle: Text(
                                    "My Farm",
                                    style: TextStyle(
                                        fontSize: 12 * widthP,
                                        fontWeight: FontWeight.w500,
                                        color: textColor),
                                  ),
                                  trailing: Container(
                                    height: 47,
                                    width: 47,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/myFarmCircular.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Gap(7),
                              Expanded(
                                child: ListTile(
                                  tileColor: primaryColor.withOpacity(0.5),
                                  shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(color: borderColor),
                                  ),
                                  title: Text(
                                    "Plot",
                                    style: TextStyle(
                                        color: secondaryTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12 * widthP),
                                  ),
                                  subtitle: Text(
                                    "Carrot",
                                    style: TextStyle(
                                        fontSize: 12 * widthP,
                                        fontWeight: FontWeight.w500,
                                        color: textColor),
                                  ),
                                  trailing: Container(
                                    height: 47,
                                    width: 47,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/crops/carrot.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Gap(16),
                          FarmButton(onTap: () {}, text: "Open Ticket")
                        ],
                      ),
                    ),
                  ),
                  Gap(28),
                  Row(
                    children: [
                      Text(
                        "Plot Gallery",
                        style: TextStyle(
                            fontSize: 18 * widthP,
                            fontWeight: FontWeight.w600,
                            color: textColor),
                      ),
                      Spacer(),
                      Text(
                        "View All",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: primaryColor),
                      ),
                    ],
                  ),
                  Gap(12),
                  SizedBox(
                    height: 235,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 108 * heightF,
                          height: 88 * widthP,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage("assets/images/image.png"),
                                fit: BoxFit.cover),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
