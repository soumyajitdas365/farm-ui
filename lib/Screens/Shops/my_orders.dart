
import 'package:farm_ui/Components/orders.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Orders"),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Active Orders",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18 * widthP,
                  color: textColor),
            ),
            Gap(13),
            OrderCart(
                onTap: () {},
                brandName: "Brand",
                productName: "110 Psi Motor",
                price: 450,
                image: "assets/images/motor.png"),
            Gap(34),
            Text(
              "Previous Orders",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18 * widthP,
                  color: textColor),
            ),
            Gap(13),
            OrderCart(
                onTap: () {},
                brandName: "Brand",
                productName: "110 Psi Motor",
                price: 450,
                image: "assets/images/motor.png"),
            Gap(13),
            OrderCart(
                onTap: () {},
                brandName: "Brand",
                productName: "110 Psi Motor",
                price: 450,
                image: "assets/images/motor.png"),
          ],
        ),
      ),
    );
  }
}
