import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constant_logic.dart';
import 'main_constants.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: getScreenWidth(context),
      color: black,
      child: Padding(
        padding: EdgeInsets.only(left: 80.w, right: 80.w),
        child: Row(
          children: [
            Text(
              "About us\n\nContact us",
              style: getTextStyle(
                context: context,
                fontSize: 14.sp,
                color: white,
              ),
            ),
            const Spacer(),
            Row(
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
            ),
            const Spacer(),
            Text(
              "Help and Support\n\nPrivacy policy",
              style: getTextStyle(
                context: context,
                fontSize: 14.sp,
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
