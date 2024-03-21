import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:flutter/material.dart';

class NotificationComponent extends StatefulWidget {
  const NotificationComponent({
    Key? key,
    required this.onTap,
    required this.image,
    required this.notification,
    required this.time,
  }) : super(key: key);

  final VoidCallback onTap;
  final String image;
  final String notification;
  final String time;

  @override
  State<NotificationComponent> createState() => _NotificationComponentState();
}

class _NotificationComponentState extends State<NotificationComponent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: widget.onTap,
      contentPadding: EdgeInsets.zero,
      title: Text(
        widget.notification,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
      ),
      subtitle: Text(
        widget.time,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      trailing: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          color: Color(0XFFD9D9D9),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
      ),
    );
  }
}
