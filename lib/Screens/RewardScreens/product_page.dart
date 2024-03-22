import 'package:farm_ui/Components/button.dart';
import 'package:farm_ui/Components/dot_indicator.dart';
import 'package:farm_ui/Components/reward_tile.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:farm_ui/Utils/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Productpage extends StatefulWidget {
  const Productpage({super.key});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
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

  PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.ceil();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: FarmButton(onTap: () {}, text: "Claim Product"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 417, 
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return Image.network(
                        imageList[index],
                        width: 393, 
                        fit: BoxFit.cover, 
                      );
                    },
                  ),
                  Positioned(
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        imageList.length,
                        (index) => Indicator(
                          isActive: index == _currentPage,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem",
                    style: TextStyle(color: secondaryTextColor),
                  ),
                  Row(
                    children: [
                      Text(
                        "Lorem",
                        style: TextStyle(
                            fontSize: 24 * widthP,
                            color: textColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Icon(Icons.money),
                      Text(
                        "10",
                        style: TextStyle(
                            fontSize: 28 * widthP,
                            color: textColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non pellentesque magna. Ut suscipit, mi vitae tincidunt molestie, justo lacus hendrerit elit, sit amet consequat lectus nisl eget est. Integer semper eros.",
                  ),
                  Gap(28),
                  Text(
                    "Product Specs",
                    style: TextStyle(
                        fontSize: 18 * widthP,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(16),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Usuage",
                                style: TextStyle(
                                    fontSize: 12 * widthP, color: textColor),
                              ),
                              Spacer(),
                              Text(
                                "Agriculture",
                                style: TextStyle(
                                    fontSize: 12 * widthP,
                                    color: textColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0XFFE2E3E4),
                          ),
                        ],
                      );
                    },
                  ),
                  Gap(28),
                  Text(
                    "Similar Products",
                    style: TextStyle(
                        fontSize: 18 * widthP,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(12),
                  RewardTile(
                      onTap: () {},
                      title: "Lorem Ipsum",
                      subtitle1: "Lorem Ipsum",
                      trailingText: "10"),
                  Gap(12),
                  RewardTile(
                      onTap: () {},
                      title: "Lorem Ipsum",
                      subtitle1: "Lorem Ipsum",
                      subtitle2: "Need 90 coins to unlock",
                      trailingText: "100"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


