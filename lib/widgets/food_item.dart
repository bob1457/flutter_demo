import 'package:flutter/material.dart';
import 'package:flutter_app/models/food.dart';

class FoodItem extends StatelessWidget {
  // const FoodItem({Key? key}) : super(key: key);
  final Food food;

  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(food.name),
    );
  }
}
