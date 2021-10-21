import 'package:flutter/material.dart';
import 'package:flutter_app/models/job.dart';
import 'package:flutter_app/widgets/iocn_text.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;

  JobItem(this.job, [this.showTime = false]);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      // child: Text("Job Item"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Image.asset(job.logoUrl),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    job.company,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                job.isBookMarked ? Icons.bookmark : Icons.book_online_outlined,
                color: job.isBookMarked
                    ? Theme.of(context).primaryColor
                    : Colors.black54,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            job.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(Icons.location_on_outlined, job.location),
              if (showTime) IconText(Icons.access_time_outlined, job.time),
            ],
          )
        ],
      ),
    );
  }
}
