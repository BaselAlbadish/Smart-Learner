import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/fetures/Home/home.dart';
import 'package:smart_learner/core/store.dart';
import 'package:smart_learner/fetures/ILS_Quiz/question_card.dart';
import 'package:smart_learner/models/student.dart';
import '../../core/appBar.dart';
import '../../core/bottomBar.dart';
import '../../core/constant_logic.dart';
import '../../core/main_constants.dart';
import '../../data_source/remote_data.dart';
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
              MyAppBar(),
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
                            if (index == 11) {
                              return Container(
                                margin: EdgeInsets.only(left: 360.w, right: 360.w, top: 80.h, bottom: 80.h),
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
                                    onPressed: () {
                                      setState(() {
                                        stackIndex++;
                                      });
                                    },
                                    child: Text(
                                      "Next",
                                      style: getTextStyle(
                                        context: context,
                                        fontSize: 20.sp,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
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
                            if (index == 11) {
                              return Container(
                                margin: EdgeInsets.only(left: 360.w, right: 360.w, top: 80.h, bottom: 80.h),
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
                                    onPressed: () {
                                      setState(() {
                                        stackIndex++;
                                      });
                                    },
                                    child: Text(
                                      "Next",
                                      style: getTextStyle(
                                        context: context,
                                        fontSize: 20.sp,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
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
                            if (index == 11) {
                              return Container(
                                margin: EdgeInsets.only(left: 360.w, right: 360.w, top: 80.h, bottom: 80.h),
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
                                    onPressed: () {
                                      setState(() {
                                        stackIndex++;
                                      });
                                    },
                                    child: Text(
                                      "Next",
                                      style: getTextStyle(
                                        context: context,
                                        fontSize: 20.sp,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
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
                            if (index == 11) {
                              return Container(
                                margin: EdgeInsets.only(left: 360.w, right: 360.w, top: 80.h, bottom: 80.h),
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
                                    onPressed: () async{
                                      Student student = Student(
                                          name: Store.name,
                                          input: Store.inputResult,
                                          perception: Store.perceptionResult,
                                          processing: Store.processingResult,
                                          understanding: Store.understandingResult);

                                      Store.student = student;
                                      RemoteData remote = RemoteData();
                                      Store.studentId = await remote.postStudent(Store.student);

                                      print("input : " + Store.inputResult.toString());
                                      print("perception : "+Store.perceptionResult.toString());
                                      print("processing : "+Store.processingResult.toString());
                                      print("understanding : "+Store.understandingResult.toString());

                                      setState(() {
                                        stackIndex++;
                                      });
                                    },
                                    child: Text(
                                      "Next",
                                      style: getTextStyle(
                                        context: context,
                                        fontSize: 20.sp,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } else {
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
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Input : " + Store.inputResult.toString(),
                                              style: getTextStyle(
                                                fontWeight: FontWeight.normal,
                                                context: context,
                                                fontSize: 25.sp,
                                                color: black,
                                              ),
                                            ),
                                            Text(
                                              "Perception : " + Store.perceptionResult.toString(),
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
                                              "Processing : " + Store.processingResult.toString(),
                                              style: getTextStyle(
                                                fontWeight: FontWeight.normal,
                                                context: context,
                                                fontSize: 25.sp,
                                                color: black,
                                              ),
                                            ),
                                            Text(
                                              "Understanding : " + Store.understandingResult.toString(),
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
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 20.h),
                                    child: Container(
                                      height: 60.h,
                                      width: 200.w,
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
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Home(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Next",
                                          style: getTextStyle(
                                            context: context,
                                            fontSize: 20.sp,
                                            color: white,
                                          ),
                                        ),
                                      ),
                                    ),
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
              const MyBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
