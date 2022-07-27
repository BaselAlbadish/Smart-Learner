import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/fetures/Home/home.dart';
import 'package:smart_learner/fetures/articles/articles_screen.dart';
import '../fetures/courses/courses.dart';
import '../fetures/profile/profile.dart';
import 'constant_logic.dart';
import 'main_constants.dart';

class MyAppBar extends StatelessWidget {
  int selectedIndex = -1;
  late bool isBlack;

  MyAppBar({this.isBlack = true, this.selectedIndex = -1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: getScreenWidth(context),
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(left: 70.w, right: 70.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                "Smart Learner",
                style: getTextStyle(
                  fontWeight: FontWeight.bold,
                  context: context,
                  fontSize: 32.sp,
                  color: isBlack ? black : white,
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Home();
                          },
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Home",
                          style: getTextStyle(
                            fontWeight: FontWeight.bold,
                            context: context,
                            fontSize: 18.sp,
                            color: isBlack ? black : white,
                          ),
                        ),
                        selectedIndex == 0
                            ? Container(
                                width: 40.w,
                                height: 3.h,
                          color: isBlack ? black : white,
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  SizedBox(width: 25.w),
                  TextButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ArticlesScreen();
                          },
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Articles",
                          style: getTextStyle(
                            fontWeight: FontWeight.bold,
                            context: context,
                            fontSize: 18.sp,
                            color: isBlack ? black : white,
                          ),
                        ),
                        selectedIndex == 1
                            ? Container(
                                width: 40.w,
                                height: 3.h,
                          color: isBlack ? black : white,
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  SizedBox(width: 25.w),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Courses();
                          },
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Courses",
                          style: getTextStyle(
                            fontWeight: FontWeight.bold,
                            context: context,
                            fontSize: 18.sp,
                            color: isBlack ? black : white,
                          ),
                        ),
                        selectedIndex == 2
                            ? Container(
                                width: 40.w,
                                height: 3.h,
                          color: isBlack ? black : white,
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 205.w,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.settings,
                      size: 40.w,
                      color: isBlack ? black : white,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  VerticalDivider(
                    endIndent: 45.h,
                    indent: 45.h,
                    thickness: 2,
                    color: isBlack ? black : white,
                  ),
                  SizedBox(width: 20.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Profile();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.person_pin,
                      size: 40.w,
                      color: isBlack ? black : white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
