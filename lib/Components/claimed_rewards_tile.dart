import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';

class ClaimedRewardsTile extends StatefulWidget {
  const ClaimedRewardsTile({
    Key? key,
    required this.onTap,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;
  final String subtitle;

  @override
  State<ClaimedRewardsTile> createState() => _ClaimedRewardsTileState();
}

class _ClaimedRewardsTileState extends State<ClaimedRewardsTile> {
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
          color: borderColor
        ),
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 16 * widthP,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
      subtitle: Text(
        widget.subtitle,
        style: TextStyle(
          fontSize: 12 * widthP,
          color: secondaryTextColor,
          fontWeight: FontWeight.w400,
        ),
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
      trailing: Icon(Icons.arrow_forward_outlined, color: primaryColor,),
    );
  }
}
