
import 'package:farm_ui/Screens/index.dart';
import 'package:farm_ui/Utils/Constants/index.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Lorem"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12,
              childAspectRatio: 0.7),
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductDetails(
                      productName: "Niria",
                      productPrice: "₹450",
                      productImage: "assets/images/product_bottle.png",
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0XFFEAECF0),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0XFFEAECF0),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Image.asset("assets/images/product_bottle.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "A\nLorem",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16 * widthP,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Category",
                            style: TextStyle(
                                color: Color(0XFF838FA0),
                                fontSize: 12 * widthP,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Text(
                                "₹450",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 10 * widthP,
                                    fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
