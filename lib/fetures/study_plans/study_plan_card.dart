import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/store.dart';
import '../quizzes/quizzes.dart';

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
      margin: EdgeInsets.symmetric(horizontal: 75.w, vertical: 40.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.courseIndex.toString(),
            style: TextStyle(fontSize: 25.sp),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            height: 210.h,
            width: 300.w,
            color: Colors.blue,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/CoursesImages/${Store.goal}.jpg"),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 750.w, child: Text(widget.courseName)),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                width: 750.w,
                child: Text(
                  widget.courseDescription,
                ),
              ),
            ],
          ),
          Store.makeSure(widget.courseIndex)
              ? Padding(
                  padding: EdgeInsets.only(left: 25.w),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Quizzes(quizName: widget.courseName);
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Test",
                      style: TextStyle(fontSize: 30.sp, color: Colors.amber),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
