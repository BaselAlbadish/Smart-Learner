import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/fetures/ILS_Quiz/ils_Store.dart';
import 'package:smart_learner/fetures/ILS_Quiz/question_card.dart';
import '../../core/constant_logic.dart';
import '../../core/main_constants.dart';
import '../profile/bottom_content.dart';
import 'ils_questions.dart';

class ILSQuiz extends StatefulWidget {
  const ILSQuiz({Key? key}) : super(key: key);

  @override
  State<ILSQuiz> createState() => _ILSQuizState();
}

class _ILSQuizState extends State<ILSQuiz> {
  int stackIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                        onTap: () {},
                        child: Icon(Icons.person_pin, size: 40.w, color: black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: getScreenWidth(context),
                height: 100.h,
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
              IndexedStack(
                index: stackIndex,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 75.h, bottom: 75.h),
                    child: Container(
                      height: 600.h,
                      color: white,
                      child: GridView.builder(
                          itemCount: 12,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 6.w,
                          ),
                          itemBuilder: (context, index) {
                            if(index == 11){
                              return Container(
                                margin: EdgeInsets.only(left: 260.w,right: 260.w,top: 50.h,bottom: 50.h),
                                child: Container(
                                  height: 60.h,
                                  width: 260.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF83D6D4),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        stackIndex++;
                                      });
                                    },
                                    child: Text(
                                      "Next",
                                      style: getTextStyle(
                                        context: context,
                                        fontSize: 16.sp,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }else{
                              return QuestionCard(
                                stackIndex: 0,
                                answerA: inputAnswers[index][0],
                                answerB: inputAnswers[index][1],
                                index: index,
                                question: inputs[index],
                              );
                            }
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 75.h, bottom: 75.h),
                    child: Container(
                      height: 600.h,
                      color: white,
                      child: GridView.builder(
                          itemCount: 12,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 6.w,
                          ),
                          itemBuilder: (context, index) {
                            if(index == 11){
                              return Container(
                                margin: EdgeInsets.only(left: 260.w,right: 260.w,top: 50.h,bottom: 50.h),
                                child: Container(
                                  height: 60.h,
                                  width: 260.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF83D6D4),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        stackIndex++;
                                      });
                                    },
                                    child: Text(
                                      "Next",
                                      style: getTextStyle(
                                        context: context,
                                        fontSize: 16.sp,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }else{
                              return QuestionCard(
                                stackIndex: stackIndex,
                                answerA: perceptionAnswers[index][0],
                                answerB: perceptionAnswers[index][1],
                                index: index,
                                question: perceptions[index],
                              );
                            }
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 75.h, bottom: 75.h),
                    child: Container(
                      height: 600.h,
                      color: white,
                      child: GridView.builder(
                          itemCount: 12,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 6.w,
                          ),
                          itemBuilder: (context, index) {
                            if(index == 11){
                              return Container(
                                margin: EdgeInsets.only(left: 260.w,right: 260.w,top: 50.h,bottom: 50.h),
                                child: Container(
                                  height: 60.h,
                                  width: 260.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF83D6D4),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        stackIndex++;
                                      });
                                    },
                                    child: Text(
                                      "Next",
                                      style: getTextStyle(
                                        context: context,
                                        fontSize: 16.sp,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }else{
                              return QuestionCard(
                                stackIndex: stackIndex,
                                answerA: processingAnswers[index][0],
                                answerB: processingAnswers[index][1],
                                index: index,
                                question: processing[index],
                              );
                            }
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 75.h, bottom: 75.h),
                    child: Container(
                      height: 600.h,
                      color: white,
                      child: GridView.builder(
                          itemCount: 12,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 6.w,
                          ),
                          itemBuilder: (context, index) {
                            if(index == 11){
                              return Container(
                                margin: EdgeInsets.only(left: 260.w,right: 260.w,top: 50.h,bottom: 50.h),
                                child: Container(
                                  height: 60.h,
                                  width: 260.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF83D6D4),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                      //TODO
                                      print(IlsStore.inputResult.toString());
                                      print(IlsStore.perceptionResult.toString());
                                      print(IlsStore.processingResult.toString());
                                      print(IlsStore.understandingResult.toString());
                                    },
                                    child: Text(
                                      "Next",
                                      style: getTextStyle(
                                        context: context,
                                        fontSize: 16.sp,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }else{
                              return QuestionCard(
                                stackIndex: stackIndex,
                                answerA: understandingAnswers[index][0],
                                answerB: understandingAnswers[index][1],
                                index: index,
                                question: understanding[index],
                              );
                            }
                          }),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 100.h),
                      child: Container(
                        height: 450.h,
                        width: 610.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: black),
                            borderRadius: BorderRadius.all(Radius.circular(10)
                      ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Your ILS Personality",
                              style: getTextStyle(
                                fontWeight: FontWeight.normal,
                                context: context,
                                fontSize: 32.sp,
                                color: black,
                              ),
                            ),
                            Container(
                              height: 250.h,
                              width: 470.w,
                              decoration: BoxDecoration(
                                color: const Color(0xFFD7E1F5),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFFD7E1F5).withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                                borderRadius: const BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Input : " + IlsStore.inputResult.toString(),
                                        style: getTextStyle(
                                          fontWeight: FontWeight.normal,
                                          context: context,
                                          fontSize: 25.sp,
                                          color: black,
                                        ),
                                      ),
                                      Text(
                                        "Perception : " + IlsStore.perceptionResult.toString(),
                                        style: getTextStyle(
                                          fontWeight: FontWeight.normal,
                                          context: context,
                                          fontSize: 25.sp,
                                          color: black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Processing : " + IlsStore.processingResult.toString(),
                                        style: getTextStyle(
                                          fontWeight: FontWeight.normal,
                                          context: context,
                                          fontSize: 25.sp,
                                          color: black,
                                        ),
                                      ),
                                      Text(
                                        "Understanding : " + IlsStore.understandingResult.toString(),
                                        style: getTextStyle(
                                          fontWeight: FontWeight.normal,
                                          context: context,
                                          fontSize: 25.sp,
                                          color: black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
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
