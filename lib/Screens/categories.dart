import 'package:farm_ui/Screens/index.dart';
import 'package:farm_ui/Utils/Constants/index.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24 * widthP,
            color: textColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(21),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProductScreen(),
                                  ),
                                );
                              },
                              child: Card(
                                elevation: 5,
                                child: Container(
                                  height: 203 * heightF,
                                  width: 165 * widthP,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/farm_shovel.jpg",
                                        ),
                                        fit: BoxFit.cover),
                                    color: red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, bottom: 14),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                            ),
                           Gap(16),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProductScreen(),
                                  ),
                                );
                              },
                              child: Card(
                                elevation: 5,
                                child: Container(
                                  height: 260 * heightF,
                                  width: 165 * widthP,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/farm_shovel.jpg",
                                        ),
                                        fit: BoxFit.cover),
                                    color: red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, bottom: 14),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                            ),
                            Gap(16),
                          ],
                        );
                      },
                    ),
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
