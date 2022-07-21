import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/fetures/Home/home.dart';
import '../fetures/courses/courses.dart';
import '../fetures/profile/profile.dart';
import 'constant_logic.dart';
import 'main_constants.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: getScreenWidth(context),
      color: white,
      child: Padding(
        padding: EdgeInsets.only(left: 70.w, right: 70.w),
        child: Row(
          children: [
            Text(
              "Smart Learner",
              style: getTextStyle(
                fontWeight: FontWeight.bold,
                context: context,
                fontSize: 32.sp,
                color: black,
              ),
            ),
            const Spacer(),
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
              child: Text(
                "Home",
                style: getTextStyle(
                  fontWeight: FontWeight.bold,
                  context: context,
                  fontSize: 18.sp,
                  color: black,
                ),
              ),
            ),
            SizedBox(width: 25.w),
            TextButton(
              onPressed: () {},
              child: Text(
                "Articles",
                style: getTextStyle(
                  fontWeight: FontWeight.bold,
                  context: context,
                  fontSize: 18.sp,
                  color: black,
                ),
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
              child: Text(
                "Courses",
                style: getTextStyle(
                  fontWeight: FontWeight.bold,
                  context: context,
                  fontSize: 18.sp,
                  color: black,
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.settings, size: 40.w, color: black),
            ),
            SizedBox(width: 20.w),
            VerticalDivider(
              endIndent: 45.h,
              indent: 45.h,
              thickness: 2,
              color: black,
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
              child: Icon(Icons.person_pin, size: 40.w, color: black),
            ),
          ],
        ),
      ),
    );
  }
}
