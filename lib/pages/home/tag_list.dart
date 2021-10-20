import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  // TagList({Key? key}) : super(key: key);

  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagList = <String>["All", "⚡ Popular", "⭐ Featured", "❤️ My Tags"];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (contex, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      color: selected == index
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: selected == index
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).primaryColor.withOpacity(0.8),
                      )),
                  child: Text(
                    tagList[index],
                    style: TextStyle(
                      color: selected == index ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: tagList.length),
    );
  }
}
