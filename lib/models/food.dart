class Food {
  String imageUrl;
  String name;
  String desc;
  String waitTime;
  num score;
  String cal;
  num quantity;
  num price;
  List<Map<String, String>> ingredients;
  String about;
  bool highlights;

  Food(this.imageUrl, this.name, this.desc, this.waitTime, this.score, this.cal,
      this.quantity, this.price, this.ingredients, this.about,
      {this.highlights = false});
}
