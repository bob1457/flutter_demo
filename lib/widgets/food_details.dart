import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/models/food.dart';

import 'food_quantity.dart';

class FoodDetails extends StatelessWidget {
  // const FoodDetails({Key? key}) : super(key: key);
  final Food food;

  FoodDetails(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackgroundColor,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIconText(
                Icons.access_time_outlined,
                Colors.blue,
                food.waitTime,
              ),
              _buildIconText(
                Icons.star_outlined,
                Colors.amber,
                food.score.toString(),
              ),
              _buildIconText(
                Icons.local_fire_department_outlined,
                Colors.red,
                food.cal,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          FoodQuantity(food),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                "ingredients:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/dish1.png",
                            width: 30,
                          ),
                          Text(food.ingredients[index].keys.first),
                        ],
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(width: 15),
                itemCount: food.ingredients.length),
          )
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
