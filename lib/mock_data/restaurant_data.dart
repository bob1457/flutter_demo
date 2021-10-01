import 'package:flutter_app/mock_data/food_data.dart';
import 'package:flutter_app/models/restaurant.dart';

class RestaurantData {
  static Restaurant restaurant() {
    return Restaurant(
      "Ichiban",
      "No 1 Janpense Restaurnt...",
      "20-30min",
      "2.4km",
      "Restaurant",
      "assets/images/r-logo.png",
      4.1,
      {
        "Recommanded": FoodData.recommandedFoods(),
        "Popular": FoodData.popularFoods(),
        "Noodles": [],
        "Pizzas": [],
      },
    );
  }
}
