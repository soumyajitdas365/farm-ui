import 'package:farm_ui/Components/subscription_tile.dart';
import 'package:farm_ui/Screens/Profile/payment_validation.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Subscription"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 57),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Advisory Active Plans",
                  style: TextStyle(
                    color: Color(0XFF231D25),
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(12),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: primaryColor,
                ),
              ],
            ),
            Gap(13),
            SubscriptionTile(
              title: "Plan 1",
              firstSubtitle: "₹50/ 5 questions ",
              lastSubtitle: "3 Remaining | Expires on 13th April 2023",
              onTap: () {},
            ),
            Gap(28),
            Row(
              children: [
                Text(
                  "Crop Schedule Active Plans",
                  style: TextStyle(
                    color: Color(0XFF231D25),
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(12),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: primaryColor,
                ),
              ],
            ),
            Gap(13),
            SubscriptionTile(
              title: "Plan 1",
              firstSubtitle: "₹50/ 5 questions ",
              lastSubtitle: "29 days Remaining  | Expires on 13th April 2023  ",
              onTap: () {},
            ),
            Gap(28),
            Row(
              children: [
                Text(
                  "Payment Validation",
                  style: TextStyle(
                    color: Color(0XFF231D25),
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(12),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: primaryColor,
                ),
              ],
            ),
            Gap(13),
            SubscriptionTile(
              title: "Plan 1",
              firstSubtitle: "₹50/ 1 month ",
              lastSubtitle: "Approval pending",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentValidation(),
                  ),
                );
              },
              trailingIcon: Icons.arrow_forward,
            ),
          ],
        ),
      ),
    );
  }
}
