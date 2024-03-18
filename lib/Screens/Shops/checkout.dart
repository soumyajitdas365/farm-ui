
import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Screens/PaymentFlow/advisory_plan.dart';
import 'package:farm_ui/Screens/PaymentFlow/crop_schedule.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
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
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 14, top: 14, bottom: 14),
                    height: 63,
                    width: 63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/cart.png"),
                      ),
                    ),
                  ),
                  Gap(7),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "110 Psi Motor",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16 * widthP,
                            color: textColor),
                      ),
                      Text(
                        "Brand",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12 * widthP,
                            color: Colors.grey),
                      ),
                      Text(
                        "₹450",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20 * widthP,
                            color: textColor),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0XFFFFECD6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: Icon(
                      Icons.delete_outline,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                    Text(
                      "₹450",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: black),
                    )
                  ],
                ),
                Gap(14),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color(0XFFEEEEEE),
                ),
                Gap(14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                    Text(
                      "₹450",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: black),
                    )
                  ],
                ),
              ],
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: FarmButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CropSchedule(),
                            ),
                          );
                        },
                        text: "Deliver to me")
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     shape: const RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(12),
                    //       ),
                    //     ),
                    //     backgroundColor: primaryColor,
                    //     minimumSize: Size(double.infinity, 52 * heightF),
                    //   ),
                    //   child: Text(
                    //     "Deliver to me",
                    //     style: TextStyle(
                    //         color: white,
                    //         fontSize: 16 * heightF,
                    //         fontWeight: FontWeight.w600),
                    //   ),
                    // ),
                    ),
                Gap(20),
                Expanded(
                    child: FarmButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AdvisoryPlan(),
                            ),
                          );
                        },
                        text: "I will pick up")
                    //  ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     shape: const RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(12),
                    //       ),
                    //     ),
                    //     backgroundColor: primaryColor,
                    //     minimumSize: Size(double.infinity, 52 * heightF),
                    //   ),
                    //   child: Text(
                    //     "I will pick up",
                    //     style: TextStyle(
                    //         color: white,
                    //         fontSize: 16 * heightF,
                    //         fontWeight: FontWeight.w600),
                    //   ),
                    // ),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
