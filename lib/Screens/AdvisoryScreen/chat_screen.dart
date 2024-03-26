import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:farm_ui/Components/custom_text_field.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: CustomTextField(
                labelText: "Type Message",
                prefixIcon: Icon(
                  Icons.camera_alt,
                  color: primaryColor,
                ),
                suffixIcon: Icon(
                  Icons.attachment,
                  color: primaryColor,
                ),
              ),
            ),
            Gap(12),
            Icon(
              Icons.send_outlined,
              color: primaryColor,
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 2),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/profilepic.png",
                width: double.infinity,
              ),
            ),
            Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Plot Name - Advisory",
                  style: TextStyle(
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                Text(
                  "online",
                  style: TextStyle(
                      fontSize: 12 * widthP, color: secondaryTextColor),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DateChip(
                date: new DateTime(2023, 3, 21),
                color: primaryColor.withOpacity(0.2)),
            Gap(28),
            BubbleSpecialThree(
              text:
                  'Lorem ipsum dolor sit amet, con sec tetur adipiscing elit.',
              color: Color(0XFFC89963),
              isSender: false,
              tail: true,
              textStyle: TextStyle(color: white, fontSize: 16),
            ),
            Gap(20),
            BubbleSpecialThree(
              text: 'Lorem ipsum dolor sit amet',
              color: Color(0XFFF1F1F1),
              tail: true,
              textStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Gap(20),
            DateChip(
              date: new DateTime.now(),
              color: primaryColor.withOpacity(0.2),
            ),
            Gap(20),
            BubbleSpecialThree(
              text:
                  'Lorem ipsum dolor sit amet, con sec tetur adipiscing elit.',
              color: Color(0XFFC89963),
              tail: false,
              isSender: false,
              textStyle: TextStyle(color: white, fontSize: 16),
            ),
            BubbleNormalImage(
              id: '1',
              image: Image.asset("assets/images/product_bottle.png"),
              color: Color(0XFFC89963),
              tail: true,
              isSender: false,
            ),
          ],
        ),
      ),
    );
  }
}
