import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommunityProfileUser extends StatefulWidget {
  const CommunityProfileUser({super.key});

  @override
  State<CommunityProfileUser> createState() => _CommunityProfileUserState();
}

class _CommunityProfileUserState extends State<CommunityProfileUser> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 1.32,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset("assets/images/coverpic.png",
                        width: double.infinity, fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.5),
                          alignment: Alignment.bottomCenter,
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                              border: Border.all(color: primaryColor, width: 2),
                              shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/images/profilepic.png",
                            width: double.infinity,
                          ),
                        ),
                        Text(
                          "Karna",
                          style: TextStyle(
                              fontSize: 20 * widthP,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                "45",
                                style: TextStyle(
                                    fontSize: 20 * widthP,
                                    fontWeight: FontWeight.w600,
                                    color: textColor),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 16 * widthP,
                                  fontWeight: FontWeight.w400,
                                  color:secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(),
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                "309",
                                style: TextStyle(
                                    fontSize: 20 * widthP,
                                    fontWeight: FontWeight.w600,
                                    color: textColor),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                  fontSize: 16 * widthP,
                                  fontWeight: FontWeight.w400,
                                  color:secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(),
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 20 * widthP,
                                    fontWeight: FontWeight.w600,
                                    color: textColor),
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(
                                  fontSize: 16 * widthP,
                                  fontWeight: FontWeight.w400,
                                  color:secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(31),
                  FarmButton(
                    onTap: () {},
                    text: "Create Post",
                    backgroundColor: white,
                    fontColor: primaryColor,
                    borderColor: primaryColor,
                  ),
                  Gap(28),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Chip(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          backgroundColor: chipColor,
                          side: BorderSide.none,
                          label: Text(
                            "Crop Health",
                            style: TextStyle(fontSize: 12 * widthP),
                          ),
                        ),
                        Gap(23),
                        Chip(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          backgroundColor: chipColor,
                          side: BorderSide.none,
                          label: Text(
                            "lorem",
                            style: TextStyle(fontSize: 12 * widthP),
                          ),
                        ),
                        Gap(23),
                        Chip(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          backgroundColor: chipColor,
                          side: BorderSide.none,
                          label: Text(
                            "Market Trends",
                            style: TextStyle(fontSize: 12 * widthP),
                          ),
                        ),
                        Gap(23),
                        Chip(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          backgroundColor: chipColor,
                          side: BorderSide.none,
                          label: Text(
                            "Lorem Ipsum",
                            style: TextStyle(fontSize: 12 * widthP),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(28),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 42,
                                        width: 42,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50),
                                          ),
                                        ),
                                      ),
                                      Gap(8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Karna",
                                            style: TextStyle(
                                                fontSize: 16 * widthP,
                                                fontWeight: FontWeight.w600,
                                                color: textColor),
                                          ),
                                          Text(
                                            "25d",
                                            style: TextStyle(
                                                fontSize: 12 * widthP,
                                                fontWeight: FontWeight.w600,
                                                color: textColor),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: chipColor,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.5),
                                          ),
                                        ),
                                        child: Text("Crop Health"),
                                      ),
                                    ],
                                  ),
                                  Gap(22),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                    style: TextStyle(
                                      color:secondaryTextColor,
                                    ),
                                  ),
                                  Gap(20),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: textColor,
                                      ),
                                      Gap(7),
                                      Text(
                                        "2.5k",
                                        style: TextStyle(
                                            color:secondaryTextColor,
                                            fontSize: 12 * widthP),
                                      ),
                                      Gap(24),
                                      Icon(Icons.comment_outlined,
                                          color: textColor),
                                      Gap(7),
                                      Text(
                                        "3.1k",
                                        style: TextStyle(
                                            color:secondaryTextColor,
                                            fontSize: 12 * widthP),
                                      ),
                                      Spacer(),
                                      Icon(Icons.share_outlined,
                                          color: textColor)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Gap(12)
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
