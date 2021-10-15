import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/models/food.dart';
import 'package:flutter_app/widgets/custom_app_bar.dart';
import 'package:flutter_app/widgets/food_details.dart';
import 'package:flutter_app/widgets/food_img_banner.dart';

class FoodItemDetails extends StatelessWidget {
  // const FoodItemDetails({Key? key}) : super(key: key);
  final Food food;

  const FoodItemDetails(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.only(
                top: 10,
              )),
              CustomAppBar(
                Icons.arrow_back_ios_outlined,
                Icons.favorite_outline,
                leftCallback: () => Navigator.of(context).pop(),
              ),
              FoodImgBanner(food),
              FoodDetails(food),
            ],
          ),
        ));
  }
}
