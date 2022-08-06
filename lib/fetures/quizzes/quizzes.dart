import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/data_source/remote_data.dart';
import 'package:smart_learner/fetures/quizzes/quiz_card.dart';
import 'package:smart_learner/fetures/study_plans/study_plans_directory.dart';
import '../../core/appBar.dart';
import '../../core/bottomBar.dart';
import '../../core/constant_logic.dart';
import '../../core/main_constants.dart';
import '../../core/store.dart';
import '../../models/quiz.dart';

class Quizzes extends StatefulWidget {
  Quizzes({required this.quizName, Key? key}) : super(key: key);

  String quizName;

  @override
  State<Quizzes> createState() => _QuizzesState();
}

class _QuizzesState extends State<Quizzes> {
  int stackIndex = 0;
  RemoteData remoteData = RemoteData();
  int randomNumber = Random().nextInt(14);
  int totalLength = 0;
  List<int> numbers = [17,4,48,49,48,40,3,2,28,45,62,52,38,30,41];

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
                    "${widget.quizName} Assessment",
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
                      child: FutureBuilder(
                          future: remoteData.getQuiz(numbers[randomNumber]),
                          builder: (BuildContext context, snapshot) {
                            if (snapshot.hasData) {
                              List<Quiz> quizzes = snapshot.data as List<Quiz>;
                              totalLength = quizzes.length;
                              return SingleChildScrollView(
                                child: SizedBox(
                                  height: 1000.h,
                                  child: ListView.builder(
                                    itemCount: quizzes.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      if(index == quizzes.length - 1){
                                        return Container(
                                          margin: EdgeInsets.only(left: 600.w, right: 360.w, top: 80.h, bottom: 80.h),
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
                                                for(int i =0;i<quizzes.length;i++){
                                                  if(Store.userAnswers[i] == quizzes[i].right){
                                                    Store.quizResult ++;
                                                  }
                                                }
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
                                      }else{
                                        return Padding(
                                          padding: EdgeInsets.symmetric(vertical: 15.h),
                                          child: QuizCard(
                                            question: quizzes[index].question,
                                            index: index,
                                            answerA: quizzes[index].answers![0],
                                            answerB: quizzes[index].answers![1],
                                            answerC: quizzes[index].answers![2],
                                            answerD: quizzes[index].answers![3],
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              );
                            } else {
                              return Padding(padding: EdgeInsets.all(500.h), child: CircularProgressIndicator());
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
                              "Your ${widget.quizName} Assessment Result",
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
                                    child: Text(
                                      "${Store.quizResult.toString()} %",
                                      style: getTextStyle(
                                        fontWeight: FontWeight.normal,
                                        context: context,
                                        fontSize: 30.sp,
                                        color: (Store.quizResult / totalLength) * 100 > 80 ? Colors.green : Colors.red,
                                      ),
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
                                              builder: (context) => StudyPlansDirectory(),
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
