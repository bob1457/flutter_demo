import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_header.dart';
import 'package:flutter_app/pages/home/search_card.dart';
import 'package:flutter_app/pages/home/tag_list.dart';
import 'package:flutter_app/widgets/job_list.dart';

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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeHeader(),
                  SearchCard(),
                  TagList(),
                  JobList(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Case',
            icon: Icon(
              Icons.cases_outlined,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Text(''),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 20,
            ),
          ),
        ],
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
