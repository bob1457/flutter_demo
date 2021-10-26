import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  // const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black38, //change your color here
        ),
        backgroundColor: Colors.transparent, //  Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Center(
        child: Text('Search Results'),
      ),
    );
  }
}
