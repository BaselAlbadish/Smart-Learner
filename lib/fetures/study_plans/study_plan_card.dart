import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudyPlanCard extends StatefulWidget {
  StudyPlanCard({required this.courseIndex, required this.courseDescription, required this.courseName, Key? key})
      : super(key: key);

  String courseName;
  String courseDescription;
  int courseIndex;

  @override
  State<StudyPlanCard> createState() => _StudyPlanCardState();
}

class _StudyPlanCardState extends State<StudyPlanCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 110.w, vertical: 40.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.courseIndex.toString()),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            height: 210.h,
            width: 300.w,
            color: Colors.blue,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/CoursesImages/${widget.courseName}.jpg"),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.courseName),
              SizedBox(
                height: 25.h,
              ),
              Container(
                width: 750.w,
                child: Text(
                  widget.courseDescription,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
