import 'package:flutter/material.dart';
import 'package:flutter_app/models/job.dart';
import 'package:flutter_app/widgets/iocn_text.dart';

class jobDetails extends StatelessWidget {
  // const jobDetails({Key? key}) : super(key: key);
  final Job job;

  jobDetails(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: 550,
      // color: Colors.white,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
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
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Image.asset(job.logoUrl),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          job.company,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          job.isBookMarked
                              ? Icons.bookmark
                              : Icons.bookmark_outline_outlined,
                          color: job.isBookMarked
                              ? Theme.of(context).primaryColor
                              : Colors.black,
                        ),
                        Icon(Icons.more_horiz_outlined),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  job.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(Icons.location_on_outlined, job.location),
                    IconText(Icons.access_time_outlined, job.time),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Requirements',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ...job.requirements
                    .map((e) => Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 10,
                                ),
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: 300,
                                ),
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    wordSpacing: 2.4,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                  height: 45,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {},
                    child: Text(
                      'Apply Now',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
