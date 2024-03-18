import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

class SubscriptionTile extends StatefulWidget {
  const SubscriptionTile({
    Key? key,
    required this.title,
    required this.firstSubtitle,
    required this.lastSubtitle,
    required this.onTap,
    this.trailingIcon,
  }) : super(key: key);

  final String title;
  final String firstSubtitle;
  final String lastSubtitle;
  final VoidCallback onTap;
  final IconData? trailingIcon;

  @override
  State<SubscriptionTile> createState() => _SubscriptionTileState();
}

class _SubscriptionTileState extends State<SubscriptionTile> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Material(
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            border: Border.all(
              color: Color(0XFFEAECF0),
            ),
          ),
          child: ListTile(
            title: Text(
              widget.title,
              style: TextStyle(
                  fontSize: 12 * widthP,
                  fontWeight: FontWeight.w400,
                  color: planTitle),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.firstSubtitle,
                  style: TextStyle(
                      fontSize: 16 * widthP,
                      fontWeight: FontWeight.w400,
                      color: planSubtitle),
                ),
                Text(
                  widget.lastSubtitle,
                  style: TextStyle(
                    fontSize: 12 * widthP,
                    fontWeight: FontWeight.w400,
                    color: planTitle,
                  ),
                ),
              ],
            ),
            leading: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFFAAA0E7)),
                color: Color(0XFFE2DFF7),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Icon(
                Icons.diamond,
                size: 24 * widthP,
                color: primaryColor,
              ),
            ),
            trailing:
                widget.trailingIcon != null ? Icon(widget.trailingIcon) : nil,
                iconColor: primaryColor,
                
          ),
        ),
      ),
    );
  }
}
