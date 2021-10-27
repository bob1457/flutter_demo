import 'package:flutter/material.dart';
import 'package:flutter_app/models/job.dart';
import 'package:flutter_app/widgets/job_item.dart';

class SearchList extends StatefulWidget {
  // SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  final jobList = Job.listedJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25,
      ),
      child: ListView.separated(
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: JobItem(
                  jobList[index],
                ),
              ),
          separatorBuilder: (_, constex) => SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
