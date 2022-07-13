import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/fetures/ILS_Quiz/question_card.dart';
import '../../core/constant_logic.dart';
import '../../core/main_constants.dart';
import '../profile/bottom_content.dart';
import 'ils_questions.dart';

class ILSQuiz extends StatelessWidget {
  const ILSQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 154.h,
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
                      Spacer(),
                      TextButton(
                        onPressed: () {},
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
                        onPressed: () {},
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
                      Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.settings, size: 50.w, color: black),
                      ),
                      SizedBox(width: 20.w),
                      VerticalDivider(
                        endIndent: 55.h,
                        indent: 55.h,
                        thickness: 2,
                        color: black,
                      ),
                      SizedBox(width: 20.w),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.person_pin, size: 50.w, color: black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: getScreenWidth(context),
                height: 163.h,
                color: primaryColor,
                child: Center(
                  child: Text(
                    "ILS Quiz test",
                    style: getTextStyle(
                      fontWeight: FontWeight.bold,
                      context: context,
                      fontSize: 40.sp,
                      color: black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 600.h,
                color: white,
                child: GridView.builder(
                  itemCount: 11,
                  itemBuilder: (context, index) => QuestionCard(
                    answerA: inputAnswers[index][0],
                    answerB: inputAnswers[index][1],
                    index: index,
                    question: inputs[index],
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                  ),
                ),
              ),
              Container(
                height: 153.h,
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
                      Spacer(),
                      BottomContent(),
                      Spacer(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
