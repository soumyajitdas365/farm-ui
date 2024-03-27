import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RadioCardSchedule extends StatefulWidget {
  const RadioCardSchedule({
    Key? key,
    this.onTap,
    required this.title,
    required this.tileText,
    required this.subtitle,
    this.image1,
    this.image2,
    this.image3,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String title;
  final String tileText;
  final String subtitle;
  final String? image1;
  final String? image2;
  final String? image3;

  @override
  State<RadioCardSchedule> createState() => _RadioCardScheduleState();
}

class _RadioCardScheduleState extends State<RadioCardSchedule> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontSize: 16 * widthP,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                  Gap(20),
                  Container(
                    width: 41 * widthP,
                    decoration: BoxDecoration(
                      color: Color(0XFFF3FAF0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        widget.tileText,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: primaryColor,
                  ),
                ],
              ),
              Text(
                widget.subtitle,
                style: TextStyle(color: secondaryTextColor),
              ),
              if (widget.image1 != null ||
                  widget.image2 != null ||
                  widget.image3 != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.image1 != null)
                      SizedBox(
                        height: 74 * heightF,
                        width: 90 * widthP,
                        child: Image.asset(widget.image1!),
                      ),
                    if (widget.image2 != null)
                      SizedBox(
                        height: 74 * heightF,
                        width: 90 * widthP,
                        child: Image.asset(widget.image2!),
                      ),
                    if (widget.image3 != null)
                      SizedBox(
                        height: 74 * heightF,
                        width: 90 * widthP,
                        child: Image.asset(widget.image3!),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
