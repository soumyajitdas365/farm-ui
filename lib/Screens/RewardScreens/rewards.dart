import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Components/reward_tile.dart';
import 'package:farm_ui/Screens/RewardScreens/badge.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Rewards",
          style: TextStyle(fontSize: 24 * widthP, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Badges()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(27),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: Border.all(
                      color: Color(0XFFE3E5E5),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/rewardstar.png"),
                          Gap(34),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "You're off to a\ngreat start!",
                                style: TextStyle(
                                    fontSize: 22 * widthP,
                                    fontWeight: FontWeight.w600,
                                    color: textColor),
                              ),
                              Text(
                                "Coins needed to earn",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: secondaryTextColor),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.money),
                                  Text(
                                    "990",
                                    style: TextStyle(
                                        fontSize: 22 * widthP,
                                        color: textColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(25),
                      Row(
                        children: [
                          LinearPercentIndicator(
                            width: 240,
                            lineHeight: 8,
                            percent: 0.1,
                            backgroundColor: Color(0XFFD9D1C2),
                            progressColor: Color(0XFFC89963),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.withOpacity(0.3),
                                  spreadRadius: 0.5,
                                  blurRadius: 6,
                                  offset: Offset(3, 7),
                                ),
                              ],
                            ),
                            child: Image.asset("assets/images/badgestar.png"),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "10 coins collected",
                            style: TextStyle(
                              fontSize: 11 * widthP,
                              color: Color(0XFF877777),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Goal 1000 coins",
                            style: TextStyle(
                              fontSize: 11 * widthP,
                              color: Color(0XFF877777),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(21),
              Text(
                "Refer",
                style: TextStyle(
                    fontSize: 16 * widthP,
                    color: textColor,
                    fontWeight: FontWeight.w600),
              ),
              Gap(6),
              Container(
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0XFFE3E5E5),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Invite a friend and get Rs. 100 in wallet",
                      style: TextStyle(
                          fontSize: 16 * widthP,
                          color: textColor,
                          fontWeight: FontWeight.w700),
                    ),
                    Gap(10),
                    Text(
                      "Give a friend promo code and you'll\nget Rs. 100 coins on your wallet",
                      style: TextStyle(color: secondaryTextColor),
                    ),
                    Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FarmButton(
                          onTap: () {},
                          text: "Copy Code",
                          width: 145 * widthP,
                          backgroundColor: white,
                          fontColor: primaryColor,
                          borderColor: primaryColor,
                        ),
                        FarmButton(
                          onTap: () {},
                          text: "Share",
                          width: 145 * widthP,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(22),
              Text(
                "Wallet",
                style: TextStyle(
                    fontSize: 18 * widthP,
                    fontWeight: FontWeight.w600,
                    color: textColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 165 * widthP,
                    height: 90 * heightF,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0XFFEAECF0),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/rewardstar.png",
                          height: 57,
                          width: 57,
                        ),
                        Text(
                          "Bronze Badge",
                          style: TextStyle(
                              color: secondaryTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 165 * widthP,
                    height: 90 * heightF,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0XFFEAECF0),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.money),
                            Text(
                              "Rs.50",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32 * widthP,
                                  color: textColor),
                            ),
                          ],
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                              color: secondaryTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(34),
              Text(
                "Buy using coins",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18 * widthP,
                    color: textColor),
              ),
              Gap(12),
              RewardTile(
                  onTap: () {},
                  title: "Lorem Ipsum",
                  subtitle1: "Lorem Ipsum",
                  trailingText: "10"),
              Gap(12),
              RewardTile(
                  onTap: () {},
                  title: "Lorem Ipsum",
                  subtitle1: "Lorem Ipsum",
                  subtitle2: "Need 90 coins to unlock",
                  trailingText: "100"),
            ],
          ),
        ),
      ),
    );
  }
}
