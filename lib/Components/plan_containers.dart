import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:flutter/material.dart';

class PlanContainer extends StatefulWidget {
  const PlanContainer({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.titleFontSize,
    required this.subtitleFontSize,
    this.onTap,
    this.width,
    this.height,
    this.borderRadius,
    this.leadingIconColor,
    this.trailingIconColor,
    this.titleFontColor,
    this.subtitleFontColor,
    this.leadingIconSize,
    this.trailingIconSize,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final double titleFontSize;
  final double subtitleFontSize;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? leadingIconColor;
  final Color? trailingIconColor;
  final Color? titleFontColor;
  final Color? subtitleFontColor;
  final double? leadingIconSize;
  final double? trailingIconSize;

  @override
  State<PlanContainer> createState() => _PlanContainerState();
}

class _PlanContainerState extends State<PlanContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
      ),
      child: ListTile(
        onTap: widget.onTap,
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: widget.titleFontSize,
              color: widget.titleFontColor ?? planTitle,
              fontWeight: FontWeight.w400),
        ),
        subtitle: Text(
          widget.subtitle,
          style: TextStyle(
              fontSize: widget.subtitleFontSize,
              color: widget.subtitleFontColor ?? planSubtitle,
              fontWeight: FontWeight.w400),
        ),
        trailing: Icon(
          Icons.arrow_forward_outlined,
          color: widget.trailingIconColor ?? primaryColor,
          size: widget.trailingIconSize ?? 35,
        ),
        leading: Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0XFFAAA0E7),
            ),
            color: Color(0XFFE2DFF7),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Icon(
            Icons.diamond,
            color: widget.leadingIconColor ?? primaryColor,
            size: widget.leadingIconSize ?? 25,
          ),
        ),
      ),
    );
  }
}
