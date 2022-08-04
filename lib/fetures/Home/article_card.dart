import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/main_constants.dart';

class ArticleCard extends StatefulWidget {
  ArticleCard({required this.articleId,required this.articleName, Key? key}) : super(key: key);

  int articleId;
  String articleName;

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      width: 280.w,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            //TODO article image
            child: Image.asset("", fit: BoxFit.cover),
          ),
          SizedBox(height: 10.h),
          Text(
            widget.articleName,
            style: getTextStyle(
              fontWeight: FontWeight.normal,
              context: context,
              fontSize: 20.sp,
              color: black,
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              //TODO
            },
            child: Text(
              "Read Article",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
                color: const Color(0xFF007E7E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
