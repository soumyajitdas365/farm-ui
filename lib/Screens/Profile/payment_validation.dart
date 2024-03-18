import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Components/subscription_tile.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentValidation extends StatefulWidget {
  const PaymentValidation({super.key});

  @override
  State<PaymentValidation> createState() => _PaymentValidationState();
}

class _PaymentValidationState extends State<PaymentValidation> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Validation",
          style: TextStyle(
              fontSize: 24 * widthP,
              fontWeight: FontWeight.w600,
              color: textColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubscriptionTile(
              title: "Plan 1",
              firstSubtitle: "₹50/ 1 month ",
              lastSubtitle: "Approval pending",
              onTap: () {},
            ),
            Gap(28),
            Text(
              "Payment Method",
              style: TextStyle(
                fontSize: 18 * widthP,
                fontWeight: FontWeight.w600,
                color: Color(0XFF231D25),
              ),
            ),
            Gap(12),
            Container(
              width: double.infinity,
              height: 62 * heightF,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                border: Border.all(
                  color: Color(0XFFEAECF0),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Bank Transfer",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18 * widthP,
                        color: Color(0XFF2C4364),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(28),
            Text(
              "Uploaded",
              style: TextStyle(
                fontSize: 18 * widthP,
                fontWeight: FontWeight.w600,
                color: Color(0XFF231D25),
              ),
            ),
            Gap(12),
            Container(
              width: double.infinity,
              height: 62 * heightF,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                border: Border.all(
                  color: Color(0XFFEAECF0),
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Icon(
                        Icons.receipt,
                        color: primaryColor,
                      ),
                    ),
                    Gap(14),
                    Text(
                      "Receipt",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18 * widthP,
                        color: Color(0XFF2C4364),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(28),
            FarmButton(
              onTap: () {},
              text: "Approval Pending",
              backgroundColor: Color(0XFFCFCFCF),
            ),
          ],
        ),
      ),
    );
  }
}
