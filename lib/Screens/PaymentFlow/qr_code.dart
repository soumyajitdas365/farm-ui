import 'package:dotted_border/dotted_border.dart';
import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Screens/Shops/order_placed_success.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QRCode extends StatefulWidget {
  const QRCode({super.key});

  @override
  State<QRCode> createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QR Code",
          style: TextStyle(fontSize: 24 * widthP, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/QR_code.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Text(
              "loremipsum@bank",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14 * widthP,
                color: Color(0XFF231D25),
              ),
            ),
            Gap(37),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 70 * heightF,
                width: 349 * widthP,
                child: DottedBorder(
                  color: Colors.grey,
                  strokeWidth: 1,
                  borderType:
                      BorderType.RRect, 
                  radius: Radius.circular(12), 
                  dashPattern: [8,8], 
                  child: Center(
                    child: Text("Upload Screenshot"),
                  ),
                ),
              ),
            ),
            Gap(33),
            FarmButton(onTap: () {  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderPlacedSuccessfully(),
                  ),
                );}, text: "Validate Payment")
          ],
        ),
      ),
    );
  }
}
