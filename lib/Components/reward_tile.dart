import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';

class RewardTile extends StatefulWidget {
  const RewardTile({
    Key? key,
    required this.onTap,
    required this.title,
    required this.subtitle1,
    this.subtitle2,
    required this.trailingText,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;
  final String subtitle1;
  final String? subtitle2;
  final String trailingText;

  @override
  State<RewardTile> createState() => _RewardTileState();
}

class _RewardTileState extends State<RewardTile> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return ListTile(
      onTap: widget.onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        side: BorderSide(
          color: Color(0XFFEAECF0),
        ),
      ),
      // tileColor: Color(0XFFEAECF0),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 16 * widthP,
          color: textColor,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.subtitle1,
            style: TextStyle(
              fontSize: 12 * widthP,
              color: secondaryTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            widget.subtitle2 ?? "",
            style: TextStyle(
              fontSize: 12 * widthP,
              color: secondaryTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      leading: Container(
        height: 66,
        width: 66,
        decoration: BoxDecoration(
          color: profileIcon,
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.money),
          Text(
            (widget.trailingText),
          ),
        ],
      ),
    );
  }
}
