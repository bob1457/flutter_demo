import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  // const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage("assets/images/search_card_bg.png"),
            fit: BoxFit.cover,
          )),
      child: Column(
        children: [
          Text("Searc"),
        ],
      ),
    );
  }
}
