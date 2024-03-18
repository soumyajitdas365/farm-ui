import 'package:farm_ui/Utils/Constants/dimensions.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentComponent extends StatefulWidget {
  const PaymentComponent({
    Key? key,
    required this.paymentName,
    required this.paymentIcon,
    required this.onTap,
    this.price,
    this.width,
    this.height,
    this.backgroundColor,
    this.iconColor,
    this.borderColor,
  }) : super(key: key);

  final String paymentName;
  final IconData paymentIcon;
  final VoidCallback onTap;
  final String? price;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? borderColor;

  @override
  State<PaymentComponent> createState() => _PaymentComponentState();
}

class _PaymentComponentState extends State<PaymentComponent> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Material(
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: widget.height ?? 74,
          width: widget.width ?? double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: widget.borderColor ?? Colors.grey),
            borderRadius: BorderRadius.circular(12),
            color: widget.backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0XFFFFECD6),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(widget.paymentIcon),
                ),
                const Gap(22),
                Text(
                  widget.paymentName,
                  style: TextStyle(
                      fontSize: 16 * widthP, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                if (widget.price != null) ...[
                  Text(widget.price!),
                  const Gap(13),
                ],
                const Gap(13),
                Icon(
                  Icons.arrow_forward_ios,
                  color: widget.iconColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
