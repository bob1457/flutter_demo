import 'package:flutter/material.dart';
import 'package:flutter_app/models/restaurant.dart';
import 'package:flutter_app/widgets/food_item.dart';

class FoodListView extends StatelessWidget {
  // const FoodListView({Key? key}) : super(key: key);

  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => ListView.separated(
                itemBuilder: (context, index) =>
                    FoodItem(restaurant.menu[category[selected]]![index]),
                separatorBuilder: (_, index) => SizedBox(
                      height: 15,
                    ),
                itemCount: restaurant.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
