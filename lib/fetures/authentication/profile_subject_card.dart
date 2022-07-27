import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/main_constants.dart';
import '../ILS_Quiz/ils_Store.dart';

class ProfileSubjectCard extends StatefulWidget {
  ProfileSubjectCard({required this.type, required this.subjectName, Key? key}) : super(key: key);

  String subjectName;
  String type;

  @override
  State<ProfileSubjectCard> createState() => _ProfileSubjectCardState();
}

class _ProfileSubjectCardState extends State<ProfileSubjectCard> {
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
              // Rounded Checkbox
              value: valueT,
              onChanged: (inputValue) {
                setState(() {
                  valueT = !valueT;
                  if(widget.type == "subject"){
                    IlsStore.subjects.add(widget.subjectName.toString());
                  }else{
                    IlsStore.topics.add(widget.subjectName.toString());
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
