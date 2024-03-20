import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FarmButton(
              onTap: () {},
              text: "Decline",
              width: 165 * widthP,
              backgroundColor: white,
              fontColor: primaryColor,
              borderColor: primaryColor,
            ),
            FarmButton(
              onTap: () {},
              text: "Accept",
              width: 165 * widthP,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Terms of Service",
          style: TextStyle(
            fontSize: 24 * widthP,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. Terms",
              style: TextStyle(fontWeight: FontWeight.w700, color: textColor),
            ),
            Gap(8),
            Text(
              "Tellus at sit ante rutrum suspendisse pretium, vitae vel dignissim. Nunc, scelerisque adipiscing condimentum massa dignissim tortor leo lacus. Sapien felis ultrices fringilla nisi sit nibh. Etiam volutpat nisl ornare lorem mus at a, et pulvinar.",
              style: TextStyle(color: secondaryTextColor),
            ),
            Gap(24),
            Text(
              "2. Use License",
              style: TextStyle(fontWeight: FontWeight.w700, color: textColor),
            ),
            Gap(8),
            Text(
              "Fermentum erat nisl duis varius risus. Augue ac facilisi porta metus enim. Ullamcorper lacus praesent rhoncus, sapien rutrum nulla mattis vitae ultrices.",
              style: TextStyle(color: secondaryTextColor),
            ),
            Gap(24),
            Text(
              "\u2022 Fermentum erat nisl duis varius risus.\n\u2022 Augue ac facilisi porta metus enim.\n\u2022 Ullamcorper lacus praesent rhoncus, sapien rutrum nulla mattis vitae ultrices.\n\u2022 Nunc, scelerisque adipiscing condimentum massa dignissim tortor leo lacus.",
              style: TextStyle(color: secondaryTextColor),
            ),
            Gap(24),
            Text(
              "Aliquam eget purus sit malesuada tempor euismod. Eget commodo ultricies ut elit hendrerit risus. Elementum tellus nisl lectus bibendum malesuada orci dui. Nunc pharetra.",
              style: TextStyle(color: secondaryTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
