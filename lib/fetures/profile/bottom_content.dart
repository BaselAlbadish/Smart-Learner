import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/main_constants.dart';

class BottomContent extends StatelessWidget {
  const BottomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Follow Us:",
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 18.sp,
            color: white,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: SizedBox(
                height: 25.h,
                width: 25.h,
                child: Image.asset("assets/images/instagram.png", fit: BoxFit.cover))),
        Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: SizedBox(
                height: 25.h,
                width: 25.h,
                child: Image.asset("assets/images/facebook.png", fit: BoxFit.cover))),
        Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: SizedBox(
                height: 25.h,
                width: 25.h,
                child: Image.asset("assets/images/twitter.png", fit: BoxFit.cover))),
        Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: SizedBox(
                height: 25.h,
                width: 25.h,
                child: Image.asset("assets/images/youtube.png", fit: BoxFit.cover))),
      ],
    );
  }
}
