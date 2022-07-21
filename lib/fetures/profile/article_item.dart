import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/main_constants.dart';

class ArticleItem extends StatelessWidget {
  ArticleItem({required this.name,Key? key}) : super(key: key);

  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Row(
        children: [
          Container(
            height: 90.h,
            width: 150.w,
            color: grey,
            child: const SizedBox(),
          ),
          SizedBox(width: 70.w,),
          Text(
            name,
            style: getTextStyle(
              fontWeight: FontWeight.normal,
              context: context,
              fontSize: 30.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
