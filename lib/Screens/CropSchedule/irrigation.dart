import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Components/irrigation_motors.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Irrigation extends StatefulWidget {
  const Irrigation({super.key});

  @override
  State<Irrigation> createState() => _IrrigationState();
}

class _IrrigationState extends State<Irrigation> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Irrigation",
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
              // ListTile(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(12),
              //     ),
              //     side: BorderSide(
              //       color: borderColor
              //     ),
              //   ),
              //   title: Text(
              //     "Wed",
              //     style: TextStyle(
              //         fontSize: 20 * widthP,
              //         fontWeight: FontWeight.w500,
              //         color: secondaryTextColor),
              //   ),
              //   subtitle: Text(
              //     "Mar 2023",
              //     style: TextStyle(
              //         fontSize: 20 * widthP,
              //         fontWeight: FontWeight.w500,
              //         color: secondaryTextColor),
              //   ),
              //   leading: Text(
              //     "22",
              //     style: TextStyle(
              //         fontSize: 50 * widthP,
              //         fontWeight: FontWeight.w500,
              //         color: textColor),
              //   ),
              //   trailing: Text(
              //     "Today",
              //     style: TextStyle(
              //         fontSize: 16 * widthP,
              //         fontWeight: FontWeight.w600,
              //         color: primaryColor),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "22",
                      style: TextStyle(
                          fontSize: 50 * widthP,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    Gap(15),
                    Column(
                      children: [
                        Text(
                          "Wed",
                          style: TextStyle(
                              fontSize: 20 * widthP,
                              fontWeight: FontWeight.w500,
                              color: secondaryTextColor),
                        ),
                        Text(
                          "Mar 2023",
                          style: TextStyle(
                              fontSize: 20 * widthP,
                              fontWeight: FontWeight.w500,
                              color: secondaryTextColor),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Today",
                      style: TextStyle(
                          fontSize: 16 * widthP,
                          fontWeight: FontWeight.w600,
                          color: primaryColor),
                    ),
                  ],
                ),
              ),
              Gap(28),
              Text(
                "Enter the details",
                style: TextStyle(
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                    color: textColor),
              ),
              Gap(12),
              Text(
                  "The irrigation is to be given after Field Capacity of the Soil."),
              Gap(12),
              Text(
                "Activity",
                style: TextStyle(
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                    color: textColor),
              ),
              Text(
                "Images",
                style: TextStyle(
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                    color: textColor),
              ),
              Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _showImageSourceDialog();
                    },
                    child: Container(
                      height: 94,
                      width: 108,
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.add_circle_outline_rounded,
                        color: white,
                        size: 38,
                      ),
                    ),
                  ),
                  Container(
                    height: 94,
                    width: 108,
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage("assets/images/image.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 94,
                    width: 108,
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage("assets/images/image.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Gap(28),
              Row(
                children: [
                  Text(
                    "View Related Products",
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
              Row(
                children: [
                  Expanded(
                    child: IrrigationMotors(
                      onTap: () {},
                      title: "Khodal Iron Earth\n110 Psi Motor",
                      image: "assets/images/irrigationMotors.png",
                      price: "450",
                      category: "category",
                    ),
                  ),
                  Expanded(
                    child: IrrigationMotors(
                      onTap: () {},
                      title: "Khodal Iron Earth\n110 Psi Motor",
                      image: "assets/images/irrigationMotors.png",
                      price: "450",
                      category: "category",
                    ),
                  ),
                ],
              ),
              Gap(36),
              FarmButton(onTap: () {}, text: "Mark as Complete")
            ],
          ),
        ),
      ),
    );
  }

  void _showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("Open Camera"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: primaryColor.withOpacity(0.3),
              ),
              ListTile(
                title: Text("Add from Photos"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
