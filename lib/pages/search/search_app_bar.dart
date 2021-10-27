import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  // const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        // top: MediaQuery.of(context).padding.top, // height of the status bar
        top: MediaQuery.of(context).padding.top,
        right: 25,
        left: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  right: 10,
                ),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              // ClipOval(
              //   child: Image.asset(
              //     "assets/images/avatar.png",
              //     width: 35,
              //   ),
              // ),
              Icon(Icons.more_horiz_rounded),
            ],
          ),
        ],
      ),
    );
  }
}
