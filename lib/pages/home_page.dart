import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/mock_data/restaurant_data.dart';
import 'package:flutter_app/widgets/custom_app_bar.dart';
import 'package:flutter_app/widgets/food_list.dart';
import 'package:flutter_app/widgets/food_list_view.dart';
import 'package:flutter_app/widgets/restaurant_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();

  final restaurant = RestaurantData.restaurant();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(Icons.arrow_back, Icons.search_outlined),
            RestaurantInfo(),
            SizedBox(
              height: 25,
            ),
            FoodList(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              },
              restaurant,
            ),
            Expanded(
              child: FoodListView(
                selected,
                (int index) {
                  setState(() {
                    selected = index;
                  });
                },
                pageController,
                restaurant,
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SmoothPageIndicator(
                controller: pageController,
                count: restaurant.menu.length,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    height: 10,
                    width: 10,
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onDotClicked: (index) => pageController.jumpToPage(index),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 2,
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
