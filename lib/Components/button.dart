import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';

class FarmButton extends StatefulWidget {
  const FarmButton({
    Key? key,
    required this.onTap,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    required this.text,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  final VoidCallback onTap;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final String text;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  State<FarmButton> createState() => _FarmButtonState();
}

class _FarmButtonState extends State<FarmButton> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        width: widget.width ?? 350 * widthP,
        height: widget.height ?? 50 * heightF,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius ?? 12 * widthP),
          ),
          color: widget.backgroundColor ?? const Color(0XFFCA9A62),
          border: Border.all(
            color: widget.borderColor ??
                Colors.transparent,
                width: 2
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: widget.fontColor ?? white,
                fontSize: widget.fontSize ?? 16 * widthP,
                fontWeight: widget.fontWeight ?? FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
