import 'package:dotted_border/dotted_border.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gallery"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    width: 108 * heightF,
                    height: 88 * widthP,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage("assets/images/image.png"),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 70 * heightF,
              width: double.infinity,
              child: DottedBorder(
                color: Colors.grey,
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                dashPattern: [8, 8],
                child: Center(
                  child: Text("Upload Photos"),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
