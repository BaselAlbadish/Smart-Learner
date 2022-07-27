import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/appBar.dart';
import 'package:smart_learner/core/bottomBar.dart';
import 'package:smart_learner/core/constant_logic.dart';
import '../../core/main_constants.dart';

String testText =  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tem'
    'por incididunt ut labore et dolore magna aliqua. Ut en'
    'im ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
    ' ut aliquip ex ea commodo consequat. Duis aute irure dolor in rep'
    'rehenderit in voluptate velit esse ci'
    'llum dolore eu fugiat nulla pariatur. Excepteur sint occaecat'
    ' cupidatat non proident, sunt in culpa qui officia deserunt mollit'
    ' anim id est laborum.';


class StudyPlansDirectory extends StatelessWidget {
  const StudyPlansDirectory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(
                selectedIndex: 0,
              ),
              Container(
                width: getScreenWidth(context),
                height: 250.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/s_blue.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Study plans directory",
                    style: getTextStyle(
                      fontWeight: FontWeight.normal,
                      context: context,
                      fontSize: 30.sp,
                      color: white,
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.h,
                color: Colors.white,
              ),
              SizedBox(
                height: 90.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Aerospace",
                    style: getTextStyle(
                      fontWeight: FontWeight.normal,
                      context: context,
                      fontSize: 30.sp,
                      color: black,
                    ),
                  ),
                  // SizedBox(height: 50.h,),
                  Container(
                    width: 1400.w,
                    //
                    margin: EdgeInsets.symmetric(
                      horizontal: 257.w,
                      vertical: 50.h,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFD9D9D9),
                        width: 2.w,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 110.w, vertical: 40.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('test'),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 27.w),
                                height: 208.h,
                                width: 287.w,
                                color: Colors.blue,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('test'),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Container(
                                    width: 750.w,
                                    child: Text(
                                     testText,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 110.w, vertical: 40.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('test'),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 27.w),
                                height: 208.h,
                                width: 287.w,
                                color: Colors.blue,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('test'),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Container(
                                    width: 750.w,
                                    child: Text(
                                      testText,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 110.w, vertical: 40.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('test'),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 27.w),
                                height: 208.h,
                                width: 287.w,
                                color: Colors.blue,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('test'),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Container(
                                    width: 750.w,
                                    child: Text(
                                      testText,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 110.w, vertical: 40.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('test'),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 27.w),
                                height: 208.h,
                                width: 287.w,
                                color: Colors.blue,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('test'),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Container(
                                    width: 750.w,
                                    child: Text(
                                      testText,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const MyBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
