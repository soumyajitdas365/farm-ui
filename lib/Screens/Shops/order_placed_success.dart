
import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Screens/Shops/my_orders.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderPlacedSuccessfully extends StatefulWidget {
  const OrderPlacedSuccessfully({super.key});

  @override
  State<OrderPlacedSuccessfully> createState() =>
      _OrderPlacedSuccessfullyState();
}

class _OrderPlacedSuccessfullyState extends State<OrderPlacedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24 * widthP),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/order_placed_success.png",
            ),
            Gap(47),
            Text(
              "Order Placed Successfully",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28 * widthP,
                  color: textColor),
            ),
            Gap(15),
            Text(
              "Your order will be delivered in 3 - 5 days. You can track your order in the My Orders Section.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14 * widthP,
                  color: textColor),
            ),
            Gap(47),
            FarmButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyOrders(),
                  ),
                );
              },
              text: "Go to My Orders",
            )
          ],
        ),
      ),
    );
  }
}
