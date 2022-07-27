import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/appBar.dart';

import '../../core/constant_logic.dart';
import '../../core/main_constants.dart';
import '../Home/home.dart';
import '../profile/profile.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/neal.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              /*     SizedBox(
                height: 120.h,
                width: getScreenWidth(context),
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
              ),*/
              MyAppBar(
                isBlack: false,
                selectedIndex: 2,
              ),
              SizedBox(height: 75.h),
              Text(
                "Courses Directory",
                style: getTextStyle(
                  fontWeight: FontWeight.normal,
                  context: context,
                  fontSize: 36.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 75.h),
              Container(
                height: 60.h,
                width: 352.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, bottom: 14.h),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 14.h),
                        child: Icon(Icons.search, size: 30.w),
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      //TODO
                    },
                  ),
                ),
              ),
              SizedBox(height: 75.h),
              Container(
                height: 544.h,
                width: 1650.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFD9D9D9),
                    width: 2.w,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 50.w),
                    child: SingleChildScrollView(
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Container(
                            width: 250.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '# A',
                                  style: TextStyle(
                                      fontSize: 24.sp, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 60.h,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 360.w,
                          ),
                          Container(
                            width: 250.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '# B',
                                  style: TextStyle(
                                      fontSize: 24.sp, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 60.h,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 360.w,
                          ),
                          Container(
                            width: 250.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '# C',
                                  style: TextStyle(
                                      fontSize: 24.sp, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 60.h,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(
                                      "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
