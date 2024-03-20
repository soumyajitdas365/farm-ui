// ignore_for_file: unused_import

import 'dart:developer';

import 'package:farm_ui/Screens/Shops/product_screen.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];
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
      body: Container(
        margin: const EdgeInsets.all(12),
        child: MasonryGridView.count(
           
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
     
            return Container(
              // height: (index % (imageList.length/2).ceil() + 1) * 100,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                child: 
                
                 FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: imageList[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
         
         
          },
        ),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(21),
      //   child: Row(
      //     children: [
      //       Expanded(
      //         child: Column(
      //           children: [
      //             Expanded(
      //               child: ListView.builder(
      //                 physics: NeverScrollableScrollPhysics(),
      //                 itemCount: 5,
      //                 itemBuilder: (context, index) {
      //                   return Column(
      //                     children: [
      //                       GestureDetector(
      //                         onTap: () {
      //                           Navigator.push(
      //                             context,
      //                             MaterialPageRoute(
      //                               builder: (context) => const ProductScreen(),
      //                             ),
      //                           );
      //                         },
      //                         child: Card(
      //                           elevation: 5,
      //                           child: Container(
      //                             height: 203 * heightF,
      //                             width: 165 * widthP,
      //                             decoration: BoxDecoration(
      //                               image: DecorationImage(
      //                                   image: AssetImage(
      //                                     "assets/images/farm_shovel.jpg",
      //                                   ),
      //                                   fit: BoxFit.cover),
      //                               color: red,
      //                               borderRadius: BorderRadius.all(
      //                                 Radius.circular(10),
      //                               ),
      //                             ),
      //                             child: Padding(
      //                               padding: const EdgeInsets.only(
      //                                   left: 12, bottom: 14),
      //                               child: Column(
      //                                 mainAxisAlignment: MainAxisAlignment.end,
      //                                 crossAxisAlignment:
      //                                     CrossAxisAlignment.start,
      //                                 children: [
      //                                   Text(
      //                                     "Lorem",
      //                                     style: TextStyle(
      //                                         color: textColor,
      //                                         fontSize: 16 * widthP,
      //                                         fontWeight: FontWeight.w700),
      //                                   ),
      //                                   Text(
      //                                     "Ipsum",
      //                                     style: TextStyle(
      //                                         color: textColor,
      //                                         fontSize: 10 * widthP,
      //                                         fontWeight: FontWeight.w400),
      //                                   ),
      //                                 ],
      //                               ),
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                      Gap(16),
      //                     ],
      //                   );
      //                 },
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Expanded(
      //         child: Column(
      //           children: [
      //             Expanded(
      //               child: ListView.builder(
      //                 physics: NeverScrollableScrollPhysics(),
      //                 itemCount: 5,
      //                 itemBuilder: (context, index) {
      //                   return Column(
      //                     children: [
      //                       GestureDetector(
      //                         onTap: () {
      //                           Navigator.push(
      //                             context,
      //                             MaterialPageRoute(
      //                               builder: (context) => const ProductScreen(),
      //                             ),
      //                           );
      //                         },
      //                         child: Card(
      //                           elevation: 5,
      //                           child: Container(
      //                             height: 260 * heightF,
      //                             width: 165 * widthP,
      //                             decoration: BoxDecoration(
      //                               image: DecorationImage(
      //                                   image: AssetImage(
      //                                     "assets/images/farm_shovel.jpg",
      //                                   ),
      //                                   fit: BoxFit.cover),
      //                               color: red,
      //                               borderRadius: BorderRadius.all(
      //                                 Radius.circular(10),
      //                               ),
      //                             ),
      //                             child: Padding(
      //                               padding: const EdgeInsets.only(
      //                                   left: 12, bottom: 14),
      //                               child: Column(
      //                                 mainAxisAlignment: MainAxisAlignment.end,
      //                                 crossAxisAlignment:
      //                                     CrossAxisAlignment.start,
      //                                 children: [
      //                                   Text(
      //                                     "Lorem",
      //                                     style: TextStyle(
      //                                         color: textColor,
      //                                         fontSize: 16 * widthP,
      //                                         fontWeight: FontWeight.w700),
      //                                   ),
      //                                   Text(
      //                                     "Ipsum",
      //                                     style: TextStyle(
      //                                         color: textColor,
      //                                         fontSize: 10 * widthP,
      //                                         fontWeight: FontWeight.w400),
      //                                   ),
      //                                 ],
      //                               ),
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                       Gap(16),
      //                     ],
      //                   );
      //                 },
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
  
    );
  }
}
