import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/main_constants.dart';

getPreviousKnowledge({required BuildContext context, required int index, required String knowledge}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: Text(
      index.toString() + ". " + knowledge,
      style: getTextStyle(
        context: context,
        fontSize: 16.sp,
        color: white,
      ),
    ),
  );
}
