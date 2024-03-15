import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Screens/cart.dart';
import 'package:farm_ui/Utils/Constants/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProductDetails extends StatefulWidget {
  final String productName;
  final String productPrice;
  final String productImage;

  const ProductDetails({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 323 * heightF,
              width: double.infinity,
              decoration: BoxDecoration(
                color: red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Image.asset(
                widget.productImage,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                        color: Color(0XFF838FA0),
                        fontSize: 14 * widthP,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.productName,
                        style: TextStyle(
                            color: textColor,
                            fontSize: 24 * widthP,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        widget.productPrice,
                        style: TextStyle(
                            color: black,
                            fontSize: 24 * widthP,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Gap(16),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non pellentesque magna. Ut suscipit, mi vitae tincidunt molestie, justo lacus hendrerit elit, sit amet consequat lectus nisl eget est. Integer semper eros.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non pellentesque magna. Ut suscipit, mi vitae tincidunt molestie, justo lacus hendrerit elit, sit amet consequat lectus nisl eget est. Integer semper eros.",
                    style: TextStyle(
                        fontSize: 14 * widthP, fontWeight: FontWeight.w400),
                  ),
                  Gap(16),
                  FarmButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Cart(),
                          ),
                        );
                      },
                      text: "Proceed to Checkout"),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const Cart(),
                  //       ),
                  //     );
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     shape: const RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(12),
                  //       ),
                  //     ),
                  //     backgroundColor: primaryColor,
                  //     minimumSize: Size(double.infinity, 52 * heightF),
                  //   ),
                  //   child: Text(
                  //     "Proceed to Checkout",
                  //     style: TextStyle(
                  //         color: white,
                  //         fontSize: 16 * heightF,
                  //         fontWeight: FontWeight.w600),
                  //   ),
                  // ),
                  Gap(40),
                  Text(
                    "Product Specs",
                    style: TextStyle(
                        fontSize: 18 * widthP,
                        fontWeight: FontWeight.w600,
                        color: textColor),
                  ),
                  Gap(16),
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Text("Active Ingredient"),
                              Spacer(),
                              Text("Paclobutrazol 23% w/w SC"),
                            ],
                          ),
                          Gap(16),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Color(0XFFE2E3E4),
                          ),
                          Gap(16),
                        ],
                      );
                    },
                  ),
                  Text(
                    "Antidote",
                    style: TextStyle(
                        fontSize: 18 * widthP,
                        fontWeight: FontWeight.w600,
                        color: textColor),
                  ),
                  Gap(16),
                  Text(
                    "No specific antidote is known. treat symptomatically.",
                    style: TextStyle(
                        fontSize: 14 * widthP,
                        fontWeight: FontWeight.w400,
                        color: textColor),
                  ),
                  Gap(28),
                  Text(
                    "Recommended Usage",
                    style: TextStyle(
                        fontSize: 18 * widthP,
                        fontWeight: FontWeight.w600,
                        color: textColor),
                  ),
                  Gap(16),
                  ListView.builder(
                    itemCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Text("Crop"),
                              Spacer(),
                              Text("No Data"),
                            ],
                          ),
                          Gap(16),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Color(0XFFE2E3E4),
                          ),
                          Gap(16),
                        ],
                      );
                    },
                  ),
                  Gap(16),
                  Text(
                    "Reviews",
                    style: TextStyle(
                        fontSize: 18 * widthP,
                        fontWeight: FontWeight.w600,
                        color: textColor),
                  ),
                  Gap(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Summary",
                        style: TextStyle(
                            fontSize: 16 * widthP, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Gap(14),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("5"),
                              LinearPercentIndicator(
                                width: 240,
                                lineHeight: 8,
                                percent: 1,
                                backgroundColor: Colors.grey,
                                progressColor: Color(0XFFFFB400),
                              ),
                            ],
                          ),
                          Gap(10),
                          Row(
                            children: [
                              Text("4"),
                              LinearPercentIndicator(
                                width: 240,
                                lineHeight: 8,
                                percent: 0.8,
                                backgroundColor: Colors.grey,
                                progressColor: Color(0XFFFFB400),
                              ),
                            ],
                          ),
                          Gap(10),
                          Row(
                            children: [
                              Text("3"),
                              LinearPercentIndicator(
                                width: 240,
                                lineHeight: 8,
                                percent: 0.6,
                                backgroundColor: Colors.grey,
                                progressColor: Color(0XFFFFB400),
                              ),
                            ],
                          ),
                          Gap(10),
                          Row(
                            children: [
                              Text("2"),
                              LinearPercentIndicator(
                                width: 240,
                                lineHeight: 8,
                                percent: 0.4,
                                backgroundColor: Colors.grey,
                                progressColor: Color(0XFFFFB400),
                              ),
                            ],
                          ),
                          Gap(10),
                          Row(
                            children: [
                              Text("1"),
                              LinearPercentIndicator(
                                width: 240,
                                lineHeight: 8,
                                percent: 0.2,
                                backgroundColor: Colors.grey,
                                progressColor: Color(0XFFFFB400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 24 * widthP,
                                    fontWeight: FontWeight.w400,
                                    color: textColor),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0XFFFFB400),
                                size: 20,
                              )
                            ],
                          ),
                          Text(
                            "273 Reviews",
                            style: TextStyle(
                                fontSize: 12 * widthP,
                                fontWeight: FontWeight.w400,
                                color: textColor),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
