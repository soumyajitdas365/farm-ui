// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:farm_ui/Utils/Constants/index.dart';
import 'package:flutter/material.dart';

class FarmButton extends StatefulWidget {
  const FarmButton({
    Key? key,
    required this.onTap,
    this.width,
    this.height,
    this.borderRadius,
    this.gradient,
    required this.text,
    this.auxWidget,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  final VoidCallback onTap;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Gradient? gradient;
  final String text;
  final Widget? auxWidget;
  final Color? fontColor;

  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  State<FarmButton> createState() => _FarmButtonState();
}

class _FarmButtonState extends State<FarmButton> {
  bool isBeingTapped = false;

  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return GestureDetector(
      onScaleEnd: (details) {
        setState(() {
          isBeingTapped = false;
        });
      },
      onTapUp: (value) async {
        await Future.delayed(const Duration(milliseconds: 100));
        setState(() {
          isBeingTapped = false;
        });
      },
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
          color: isBeingTapped ? Colors.black12 : const Color(0XFFCA9A62),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontSize: widget.fontSize ?? 16 * widthP,
                fontWeight: widget.fontWeight ?? FontWeight.w700,
              ),
            ),
            widget.auxWidget ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
