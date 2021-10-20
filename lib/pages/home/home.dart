import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_header.dart';
import 'package:flutter_app/pages/home/search_card.dart';
import 'package:flutter_app/pages/home/tag_list.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor:
      //       Colors.transparent, // Theme.of(context).backgroundColor,
      //   elevation: 0, //.colorScheme.secondary, //const Color(0xFF43B1B7),
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            _buildBackground(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeader(),
                SearchCard(),
                TagList(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Row(
      children: [
        Expanded(
          child: Container(),
          flex: 2,
        ),
        Expanded(
          child: Container(
            color: Colors.grey.withOpacity(0.2),
          ),
          flex: 1,
        ),
      ],
    );
  }
}
