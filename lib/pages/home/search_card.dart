import 'dart:ui';

import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  // const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 40,
      ),
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage("assets/images/search_card_bg.png"),
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quick Search",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Search by job title, location,etc.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              height: 1.7,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'search',
              prefixIcon: Icon(
                Icons.search,
              ),
              filled: true,
              fillColor: Colors.white,
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(25),
              //   borderSide: BorderSide(
              //     color: Colors.white,
              //     width: 1.5,
              //   ),
              // ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Colors.yellow,
                  width: 1.5,
                ),
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
