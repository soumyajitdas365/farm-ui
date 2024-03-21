import 'package:farm_ui/Components/payment_component.dart';
import 'package:farm_ui/Screens/PaymentFlow/qr_code.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment",
          style: TextStyle(fontWeight: FontWeight.w600, color: textColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Online Payment",
                style: TextStyle(
                  fontSize: 18 * widthP,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF231D25),
                ),
              ),
              Gap(12),
              PaymentComponent(
                paymentName: "Razorpay",
                paymentIcon: Icons.card_giftcard,
                onTap: () {},
              ),
              Gap(12),
              Text(
                "Offline Payment",
                style: TextStyle(
                  fontSize: 18 * widthP,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF231D25),
                ),
              ),
              Gap(12),
              PaymentComponent(
                paymentName: "QR Code",
                paymentIcon: Icons.qr_code,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QRCode(),
                    ),
                  );
                },
              ),
              Gap(12),
              PaymentComponent(
                paymentName: "Bank Transfer",
                paymentIcon: Icons.food_bank_outlined,
                onTap: () {},
              ),
              Gap(28),
              Text(
                "Offers",
                style: TextStyle(
                  fontSize: 18 * widthP,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF231D25),
                ),
              ),
              Gap(12),
              PaymentComponent(
                paymentName: "Select applicable offers",
                paymentIcon: Icons.percent_rounded,
                onTap: () {},
              ),
              Gap(21),
              Text(
                "Wallet",
                style: TextStyle(
                  fontSize: 18 * widthP,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF231D25),
                ),
              ),
              Gap(12),
              PaymentComponent(
                paymentName: "Use Wallet Balance",
                paymentIcon: Icons.wallet,
                price: "₹50",
                onTap: () {},
              ),
              Gap(25),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                          fontSize: 15 * widthP,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF919191),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "₹500",
                        style: TextStyle(
                          fontSize: 15 * widthP,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF231D25),
                        ),
                      ),
                    ],
                  ),
                  Gap(12),
                  Row(
                    children: [
                      Text(
                        "Discount",
                        style: TextStyle(
                          fontSize: 15 * widthP,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF919191),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "-₹50",
                        style: TextStyle(
                          fontSize: 15 * widthP,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF231D25),
                        ),
                      ),
                    ],
                  ),
                  Gap(12),
                  Row(
                    children: [
                      Text(
                        "Wallet",
                        style: TextStyle(
                          fontSize: 15 * widthP,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF919191),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "-₹50",
                        style: TextStyle(
                          fontSize: 15 * widthP,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF231D25),
                        ),
                      ),
                    ],
                  ),
                  Gap(12),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  Gap(12),
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 15 * widthP,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF919191),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "₹400",
                        style: TextStyle(
                          fontSize: 20 * widthP,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF231D25),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
