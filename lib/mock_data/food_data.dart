import 'package:flutter/material.dart';
import 'package:flutter_app/models/food.dart';

class FoodData {
  static List<Food> recommandedFoods() {
    return [
      Food(
        "assets/images/dish1.png",
        "Soba Soup",
        "No 1 best seller in the area",
        "10 min",
        4.0,
        "325 cal",
        12,
        9.99,
        [
          {"noodele": "assets/images/noodles.png"},
          {"eggs": "assets/images/eggs.png"},
          {"shrimps": "assets/images/shrimps.png"},
          {"tomatos": "assets/images/tomators.png"},
        ],
        "Janpanese style nodle soup, Janpanese style nodle soup, Janpanese style nodle soupJanpanese style nodle soupJanpanese style nodle soupJanpanese style nodle soupJanpanese style nodle soupJanpanese style nodle soup",
      ),
      Food(
        "assets/images/dish2.png",
        "Special Don",
        "Famouse Janpenese rise bowl",
        "2 min",
        4.0,
        "225 cal",
        5,
        14.99,
        [
          {"noodele": "assets/images/noodles.png"},
          {"eggs": "assets/images/eggs.png"},
          {"shrimps": "assets/images/shrimps.png"},
          {"tomatos": "assets/images/tomators.png"},
        ],
        "Janpanese style rise bowl",
      ),
      Food(
        "assets/images/dish6.png",
        "Soba Soup",
        "No 1 best seller in the area",
        "10 min",
        4.0,
        "325 cal",
        12,
        19.99,
        [
          {"noodele": "assets/images/noodles.png"},
          {"eggs": "assets/images/eggs.png"},
          {"shrimps": "assets/images/shrimps.png"},
          {"tomatos": "assets/images/tomators.png"},
        ],
        "Janpanese style nodle soup",
      ),
      Food(
        "assets/images/dish4.png",
        "Soba Soup",
        "No 1 best seller in the area",
        "10 min",
        4.0,
        "325 cal",
        12,
        19.99,
        [
          {"noodele": "assets/images/noodles.png"},
          {"eggs": "assets/images/eggs.png"},
          {"shrimps": "assets/images/shrimps.png"},
          {"tomatos": "assets/images/tomators.png"},
        ],
        "Janpanese style nodle soup",
      ),
      Food(
        "assets/images/dish5.png",
        "Soba Soup",
        "No 1 best seller in the area",
        "10 min",
        4.0,
        "325 cal",
        12,
        19.99,
        [
          {"noodele": "assets/images/noodles.png"},
          {"eggs": "assets/images/eggs.png"},
          {"shrimps": "assets/images/shrimps.png"},
          {"tomatos": "assets/images/tomators.png"},
        ],
        "Janpanese style nodle soup",
      ),
    ];
  }

  static List<Food> popularFoods() {
    return [
      Food(
        "assets/images/dish6.png",
        "Soba Soup",
        "No 1 best seller in the area",
        "10 min",
        4.0,
        "325 cal",
        12,
        19.99,
        [
          {"noodele": "assets/images/noodles.png"},
          {"eggs": "assets/images/eggs.png"},
          {"shrimps": "assets/images/shrimps.png"},
          {"tomatos": "assets/images/tomators.png"},
        ],
        "Janpanese style nodle soup",
      ),
      Food(
        "assets/images/dish1.png",
        "Special Don",
        "Famouse Janpenese rise bowl",
        "2 min",
        4.0,
        "225 cal",
        5,
        14.99,
        [
          {"noodele": "assets/images/noodles.png"},
          {"eggs": "assets/images/eggs.png"},
          {"shrimps": "assets/images/shrimps.png"},
          {"tomatos": "assets/images/tomators.png"},
        ],
        "Janpanese style rise bowl",
      ),
      Food(
        "assets/images/dish5.png",
        "Soba Soup",
        "No 1 best seller in the area",
        "10 min",
        4.0,
        "325 cal",
        12,
        19.99,
        [
          {"noodele": "assets/images/noodles.png"},
          {"eggs": "assets/images/eggs.png"},
          {"shrimps": "assets/images/shrimps.png"},
          {"tomatos": "assets/images/tomators.png"},
        ],
        "Janpanese style nodle soup",
      ),
    ];
  }
}
