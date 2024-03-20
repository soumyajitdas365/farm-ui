
import 'package:farm_ui/Components/notification_component.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notification",
          style: TextStyle(
              fontSize: 24 * widthP,
              color: textColor,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(
                    fontSize: 16 * widthP,
                    color: textColor,
                    fontWeight: FontWeight.w600),
              ),
              NotificationComponent(
                  onTap: () {},
                  image: "assets/images/profilepic.png",
                  notification:
                      "Tellus at sit ante rutrum suspendisse pretium, vitae vel dignissim.",
                  time: "9:01am"),
              Divider(
                color: Color(0XFFEEEEEE),
              ),
              NotificationComponent(
                  onTap: () {},
                  image: "assets/images/profilepic.png",
                  notification:
                      "Tellus at sit ante rutrum suspendisse pretium, vitae vel dignissim.",
                  time: "9:01am"),
              Divider(
                color: Color(0XFFEEEEEE),
              ),
              NotificationComponent(
                  onTap: () {},
                  image: "assets/images/profilepic.png",
                  notification:
                      "Tellus at sit ante rutrum suspendisse pretium, vitae vel dignissim.",
                  time: "9:01am"),
              Divider(
                color: Color(0XFFEEEEEE),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Yesterday",
                style: TextStyle(
                    fontSize: 16 * widthP,
                    color: textColor,
                    fontWeight: FontWeight.w600),
              ),
              NotificationComponent(
                  onTap: () {},
                  image: "assets/images/profilepic.png",
                  notification:
                      "Tellus at sit ante rutrum suspendisse pretium, vitae vel dignissim.",
                  time: "9:01am"),
              Divider(
                color: Color(0XFFEEEEEE),
              ),
              NotificationComponent(
                  onTap: () {},
                  image: "assets/images/profilepic.png",
                  notification:
                      "Tellus at sit ante rutrum suspendisse pretium, vitae vel dignissim.",
                  time: "9:01am"),
              Divider(
                color: Color(0XFFEEEEEE),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "This week",
                style: TextStyle(
                    fontSize: 16 * widthP,
                    color: textColor,
                    fontWeight: FontWeight.w600),
              ),
              NotificationComponent(
                  onTap: () {},
                  image: "assets/images/profilepic.png",
                  notification:
                      "Tellus at sit ante rutrum suspendisse pretium, vitae vel dignissim.",
                  time: "9:01am"),
              Divider(
                color: Color(0XFFEEEEEE),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
