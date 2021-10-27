import 'package:flutter/material.dart';

class SearchOption extends StatefulWidget {
  SearchOption({Key? key}) : super(key: key);

  @override
  _SearchOptionState createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final optionMap = <String, bool>{
    'development': true,
    'business': false,
    'administrative': false,
    'network admin': false,
    'design': false,
    'data': false
  };

  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return Container(
      // margin: EdgeInsets.only(top: 10,),
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      height: 30,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    var res = optionMap[keys[index]] ?? false;
                    optionMap[keys[index]] = !res;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: optionMap[keys[index]] != null &&
                            optionMap[keys[index]] == true
                        ? Theme.of(context).primaryColor
                        : Colors.white,
                  ),
                  child: Row(
                    children: [
                      Text(
                        keys[index],
                        style: TextStyle(
                          color: optionMap[keys[index]] != null &&
                                  optionMap[keys[index]] == true
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.close,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, context) => SizedBox(
                width: 10,
              ),
          itemCount: optionMap.length),
    );
  }
}
