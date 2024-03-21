import 'package:farm_ui/Components/badge_tile.dart';
import 'package:farm_ui/Screens/RewardScreens/claimed_rewards.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Badges extends StatefulWidget {
  const Badges({super.key});

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Badges",
          style: TextStyle(
              color: textColor,
              fontSize: 24 * widthP,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Unlocked Badges",
              style: TextStyle(
                fontSize: 18 * widthP,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            Gap(12),
            BadgeTile(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const ClaimedRewards()),);
                },
                title: "Bronze Badge",
                image: "assets/images/rewardstar.png"),
            Gap(12),
            BadgeTile(
                onTap: () {},
                title: "Bronze Badge",
                image: "assets/images/rewardstar.png"),
            Gap(28),
            Text(
              "Locked Badges",
              style: TextStyle(
                fontSize: 18 * widthP,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            Gap(12),
            BadgeTile(
                onTap: () {},
                title: "Bronze Badge",
                subtitle: "Need 1000 coins to unlock",
                image: "assets/images/badgestar.png"),
            Gap(12),
            BadgeTile(
                onTap: () {},
                title: "Bronze Badge",
                subtitle: "Need 1000 coins to unlock",
                image: "assets/images/badgestar.png"),
          ],
        ),
      ),
    );
  }
}
