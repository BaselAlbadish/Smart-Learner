import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/appBar.dart';
import 'package:smart_learner/core/bottomBar.dart';
import 'package:smart_learner/core/constant_logic.dart';
import 'package:smart_learner/fetures/Home/study_plan_subjects.dart';
import 'package:smart_learner/fetures/authentication/subject_card.dart';

import '../../core/main_constants.dart';
import '../study_plans/study_plans_directory.dart';
import 'article_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(selectedIndex: 0,),
              Container(
                width: getScreenWidth(context),
                height: 250.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/s_blue.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Smart Learner",
                      style: getTextStyle(
                        fontWeight: FontWeight.normal,
                        context: context,
                        fontSize: 30.sp,
                        color: white,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Where you get the most suitable learning experience for yourself",
                          style: getTextStyle(
                            fontWeight: FontWeight.normal,
                            context: context,
                            fontSize: 20.sp,
                            color: white,
                          ),
                        ),
                        Text(
                          "using Ai powered solutions ",
                          style: getTextStyle(
                            fontWeight: FontWeight.normal,
                            context: context,
                            fontSize: 20.sp,
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 500.h,
                width: getScreenWidth(context),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 450.h,
                      width: 550.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Generate study plan",
                            style: getTextStyle(
                              fontWeight: FontWeight.normal,
                              context: context,
                              fontSize: 32.sp,
                              color: black,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 250.h,
                                width: 350.w,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFe8ecf4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFFe8ecf4).withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: const Offset(0, 0),
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: SingleChildScrollView(
                                  child: SizedBox(
                                    height: 250.h,
                                    child: ListView.builder(
                                      itemCount: subjects.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Text(subjects[index]);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                height: 60.h,
                                width: 350.w,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF83D6D4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: const Offset(0, 1),
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "submit",
                                    style: getTextStyle(
                                      fontWeight: FontWeight.bold,
                                      context: context,
                                      fontSize: 26.sp,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 450.h,
                      width: 550.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "View study plans",
                            style: getTextStyle(
                              fontWeight: FontWeight.normal,
                              context: context,
                              fontSize: 32.sp,
                              color: black,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 250.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFe8ecf4),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xFFe8ecf4).withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child:Center(
                                    child: Text(
                                      "View previously generated study plans",
                                      style: getTextStyle(
                                        fontWeight: FontWeight.normal,
                                        context: context,
                                        fontSize: 18.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                height: 60.h,
                                width: 350.w,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF83D6D4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: const Offset(0, 1),
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const StudyPlansDirectory();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "View study plans  >",
                                    style: getTextStyle(
                                      fontWeight: FontWeight.bold,
                                      context: context,
                                      fontSize: 26.sp,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 480.h,
                width: getScreenWidth(context),
                  decoration: BoxDecoration(
                    //TODO: replace with 0xFFF7F9FD color
                    color: Colors.grey.shade200,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 52.h),
                      child: Center(child: Text('Recommended Articles',style: TextStyle(fontSize: 32.sp,fontWeight: FontWeight.w300,),),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ArticleCard(index: 0),
                        ArticleCard(index: 1),
                        ArticleCard(index: 3),
                        ArticleCard(index: 2),
                      ],
                    ),
                  ],
                )
              ),
              const MyBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
