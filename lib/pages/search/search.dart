import 'package:flutter/material.dart';
import 'package:flutter_app/pages/search/search_app_bar.dart';
import 'package:flutter_app/pages/search/search_input.dart';
import 'package:flutter_app/pages/search/search_option.dart';

class Search extends StatelessWidget {
  // const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   iconTheme: IconThemeData(
      //     color: Colors.black38, //change your color here
      //   ),
      //   backgroundColor: Colors.transparent, //  Theme.of(context).primaryColor,
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchAppBar(),
                SearchInput(),
                SearchOption(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
