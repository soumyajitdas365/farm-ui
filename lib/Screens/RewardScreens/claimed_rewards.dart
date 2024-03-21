import 'package:farm_ui/Components/claimed_rewards_tile.dart';
import 'package:farm_ui/Screens/RewardScreens/product_page.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClaimedRewards extends StatefulWidget {
  const ClaimedRewards({super.key});

  @override
  State<ClaimedRewards> createState() => _ClaimedRewardsState();
}

class _ClaimedRewardsState extends State<ClaimedRewards> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Claimed Rewards",
          style: TextStyle(
              fontSize: 24 * widthP,
              fontWeight: FontWeight.w600,
              color: textColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Active",
              style: TextStyle(
                fontSize: 18 * widthP,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            Gap(12),
            ClaimedRewardsTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Productpage(),
                  ),
                );
              },
              title: "Lorem Ipsum",
              subtitle: "Lorem Ipsum",
            ),
            Gap(12),
            ClaimedRewardsTile(
              onTap: () {},
              title: "Lorem Ipsum",
              subtitle: "Lorem Ipsum",
            ),
            Gap(28),
            Text(
              "Inactive",
              style: TextStyle(
                fontSize: 18 * widthP,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            Gap(12),
            ClaimedRewardsTile(
              onTap: () {},
              title: "Lorem Ipsum",
              subtitle: "Lorem Ipsum",
            ),
            Gap(12),
            ClaimedRewardsTile(
              onTap: () {},
              title: "Lorem Ipsum",
              subtitle: "Lorem Ipsum",
            ),
          ],
        ),
      ),
    );
  }
}
