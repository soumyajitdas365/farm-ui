
import 'package:farm_ui/Screens/Shops/categories.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'E-Commerce',
            style: TextStyle(
                color: textColor,
                fontSize: 24 * widthP,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 18 * widthP,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Categories(),
                      ),
                    );
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 14 * widthP,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
                  Gap(16),
            SizedBox(
              height: 160 * heightF,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Card(
                        elevation: 5,
                        child: Container(
                          height: 160 * heightF,
                          width: 125 * widthP,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/farm_shovel.jpg",
                                ),
                                fit: BoxFit.cover),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, bottom: 14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem",
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 16 * widthP,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Ipsum",
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 10 * widthP,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                            Gap(12),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
