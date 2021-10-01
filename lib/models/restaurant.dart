import 'package:flutter_app/models/food.dart';

class Restaurant {
  String name;
  String desc;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(this.name, this.desc, this.waitTime, this.distance, this.label,
      this.logoUrl, this.score, this.menu);
}
