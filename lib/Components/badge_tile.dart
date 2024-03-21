import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

class BadgeTile extends StatefulWidget {
  const BadgeTile({
    Key? key,
    required this.onTap,
    required this.title,
    required this.image,
    this.subtitle,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;
  final String image;
  final String? subtitle;

  @override
  State<BadgeTile> createState() => _BadgeTileState();
}

class _BadgeTileState extends State<BadgeTile> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return ListTile(
        contentPadding: EdgeInsets.all(12),
        onTap: widget.onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          side: BorderSide(
            color: Color(0XFFEAECF0),
          ),
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20 * widthP,
            color: textColor,
          ),
        ),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        subtitle: widget.subtitle != null
            ? Text(
                widget.subtitle ?? "",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: secondaryTextColor),
              )
            : nil);
  }
}
