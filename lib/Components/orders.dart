import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderCart extends StatefulWidget {
  const OrderCart({
    Key? key,
    required this.onTap,
    required this.brandName,
    required this.productName,
    required this.price,
    required this.image,
    this.borderRadius,
  }) : super(key: key);

  final VoidCallback onTap;
  final String brandName;
  final String productName;
  final double price;
  final String image;
  final double? borderRadius;

  @override
  State<OrderCart> createState() => _OrderCartState();
}

class _OrderCartState extends State<OrderCart> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 63,
              width: 63,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                ),
              ),
            ),
            Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: TextStyle(
                      fontSize: 16 * widthP,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                ),
                Text(
                  widget.brandName,
                  style: TextStyle(
                      fontSize: 12 * widthP,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Text(
                  "₹${widget.price}",
                  style: TextStyle(
                      fontSize: 20 * widthP,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
