import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/fetures/ILS_Quiz/ILS_quizz.dart';
import 'package:smart_learner/fetures/profile/profile_button.dart';
import 'package:smart_learner/fetures/profile/video_item.dart';
import '../../core/appBar.dart';
import '../../core/bottomBar.dart';
import '../../core/main_constants.dart';
import 'add_goul_textField.dart';
import 'article_item.dart';
import 'get_previous_knoledge.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
               MyAppBar(),
              Row(
                children: [
                  Container(
                      height: 1937.h,
                      width: 510.w,
                      color: primaryColor,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 150.w),
                            child: Container(
                              margin: EdgeInsets.only(left: 10.w, right: 10.w),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: grey,
                                  width: 2.w,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(120)),
                              ),
                              child: CircleAvatar(
                                backgroundImage: const AssetImage("assets/images/default_image.png"),
                                radius: 100.w,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.h, bottom: 50.h),
                            child: Text(
                              "First Last",
                              style: getTextStyle(
                                context: context,
                                fontSize: 32.sp,
                                color: white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            "Information technology Engineer",
                            style: getTextStyle(
                              context: context,
                              fontSize: 16.sp,
                              color: white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
                            child: Text(
                              "Architecture lover",
                              style: getTextStyle(
                                context: context,
                                fontSize: 16.sp,
                                color: white,
                              ),
                            ),
                          ),
                          Divider(
                            color: white,
                            thickness: 1,
                            indent: 160.w,
                            endIndent: 160.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 50.h, bottom: 20.h),
                            child: Text(
                              "Previous knowledge",
                              style: getTextStyle(
                                context: context,
                                fontSize: 24.sp,
                                color: white,
                              ),
                            ),
                          ),
                          getPreviousKnowledge(knowledge: 'Machine learning', context: context, index: 1),
                          getPreviousKnowledge(knowledge: 'Web development', context: context, index: 2),
                          AddGoalFieldWidget(
                            onChange: (value) {},
                            hintText: "Type your goal",
                            height: 40.h,
                            width: 180.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25.h),
                            child: ProfileButton(
                              height: 40.h,
                              width: 130.w,
                              text: 'Add more',
                              onPress: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 100.h),
                            child: ProfileButton(
                              height: 40.h,
                              width: 230.w,
                              text: 'Retake ILS test',
                              onPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const ILSQuiz();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25.h),
                            child: ProfileButton(
                              height: 40.h,
                              width: 230.w,
                              text: 'View study plans  >',
                              onPress: () {},
                            ),
                          ),
                        ],
                      )),
                  Container(
                      height: 1937.h,
                      width: 930.w,
                      color: white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 120.w, right: 120.w, top: 150.h, bottom: 150.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Current Study Plan",
                              style: getTextStyle(
                                fontWeight: FontWeight.normal,
                                context: context,
                                fontSize: 32.sp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    VideoItem(name: 'video_1'),
                                    VideoItem(name: 'video_2'),
                                    VideoItem(name: 'video_3'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Text(
                              "Recommended Articles",
                              style: getTextStyle(
                                fontWeight: FontWeight.normal,
                                context: context,
                                fontSize: 32.sp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ArticleItem(name: "article_1"),
                                    ArticleItem(name: "article_2"),
                                    ArticleItem(name: "article_3"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Text(
                              "Articles history",
                              style: getTextStyle(
                                fontWeight: FontWeight.normal,
                                context: context,
                                fontSize: 32.sp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ArticleItem(name: "article_1"),
                                    ArticleItem(name: "article_2"),
                                    ArticleItem(name: "article_3"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
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