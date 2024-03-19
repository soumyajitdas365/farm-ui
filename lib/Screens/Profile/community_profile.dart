import 'package:farm_ui/Screens/Profile/subscription.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommunityProfile extends StatefulWidget {
  const CommunityProfile({super.key});

  @override
  State<CommunityProfile> createState() => _CommunityProfileState();
}

class _CommunityProfileState extends State<CommunityProfile> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(),
      body: Column(
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
                            fontSize: 20 * widthP, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(28),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                ListTile(
                  title: Text("Language"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  leading: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: profileIcon,
                    ),
                    child: Icon(
                      Icons.language,
                      size: 25,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Gap(18),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Subscription(),
                      ),
                    );
                  },
                  title: Text("Subscription"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  leading: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: profileIcon,
                    ),
                    child: Icon(
                      Icons.card_giftcard_outlined,
                      size: 25,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Gap(18),
                ListTile(
                  title: Text("Community Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  leading: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: profileIcon,
                    ),
                    child: Icon(
                      Icons.people,
                      size: 25,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
