import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/main_constants.dart';
import '../../core/store.dart';

class SubjectCard extends StatefulWidget {
  SubjectCard({required this.subjectName, Key? key}) : super(key: key);

  String subjectName;

  @override
  State<SubjectCard> createState() => _SubjectCardState();
}

class _SubjectCardState extends State<SubjectCard> {
  bool valueT = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, top: 10.h),
      child: Row(
        children: [
          SizedBox(
            width: 25.w,
            height: 30.w,
            child: Checkbox(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
              value: valueT,
              onChanged: (inputValue) {
                setState(() {
                  if (!valueT) {
                    Store.previousKnowledge.add(widget.subjectName);
                    valueT = !valueT;
                  } else {
                    Store.previousKnowledge.remove(widget.subjectName);
                    valueT = !valueT;
                  }
                });
              },
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            widget.subjectName,
            style: getTextStyle(
              fontWeight: FontWeight.normal,
              context: context,
              fontSize: 16.sp,
              color: black,
            ),
          ),
        ],
      ),
    );
  }
}
