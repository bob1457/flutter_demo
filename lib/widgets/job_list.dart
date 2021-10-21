import 'package:flutter/material.dart';
import 'package:flutter_app/models/job.dart';
import 'package:flutter_app/widgets/job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.listedJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        margin: EdgeInsets.symmetric(vertical: 25),
        height: 160,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => JobItem(
                  jobList[index],
                ),
            separatorBuilder: (_, index) => SizedBox(
                  width: 15,
                ),
            itemCount: jobList.length));
  }
}
