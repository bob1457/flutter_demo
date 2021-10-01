import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/models/restaurant.dart';

class FoodList extends StatelessWidget {
  // const FoodList({Key? key}) : super(key: key);
  final int selected;
  final Function callback;
  final Restaurant restaurant;

  FoodList(this.selected, this.callback, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();

    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.symmetric(horizontal: 5),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: selected == index ? kPrimaryColor : Colors.white,
                  ),
                  child: Text(
                    category[index],
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
          itemCount: category.length),
    );
  }
}
