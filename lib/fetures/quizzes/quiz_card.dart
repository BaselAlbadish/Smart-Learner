import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/main_constants.dart';
import '../../core/store.dart';

class QuizCard extends StatefulWidget {
  QuizCard({this.question, this.index, this.answerA, this.answerB, this.answerC, this.answerD, Key? key})
      : super(key: key);

  String? question;
  int? index;
  String? answerA;
  String? answerB;
  String? answerC;
  String? answerD;

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 75.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            (widget.index! + 1).toString() + ". " + widget.question!,
            style: getTextStyle(
              fontWeight: FontWeight.bold,
              context: context,
              fontSize: 22.sp,
              color: black,
            ),
          ),
          Row(
            children: [
              Checkbox(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
                // Rounded Checkbox
                value: value1,
                onChanged: (inputValue) {
                  setState(
                    () {
                      Store.userAnswers.insert(widget.index!, 1);
                      if(value2){
                        value2 = false;
                        value1 = !value1;
                      }else if (value3){
                        value3 = false;
                        value1 = !value1;
                      }else if(value4){
                        value4 = false;
                        value1 = !value1;
                      }else{
                        value1 = !value1;
                      }
                    },
                  );
                },
              ),
              SizedBox(width: 10.w),
              Text(
                widget.answerA!,
                style: getTextStyle(
                  fontWeight: FontWeight.normal,
                  context: context,
                  fontSize: 14.sp,
                  color: black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
                // Rounded Checkbox
                value: value2,
                onChanged: (inputValue) {
                  setState(
                    () {
                      Store.userAnswers.insert(widget.index!, 2);
                      if(value1){
                        value1 = false;
                        value2 = !value2;
                      }else if (value3){
                        value3 = false;
                        value2 = !value2;
                      }else if(value4){
                        value4 = false;
                        value2 = !value2;
                      }else{
                        value2 = !value2;
                      }
                    },
                  );
                },
              ),
              SizedBox(width: 10.w),
              Text(
                widget.answerB!,
                style: getTextStyle(
                  fontWeight: FontWeight.normal,
                  context: context,
                  fontSize: 14.sp,
                  color: black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
                // Rounded Checkbox
                value: value3,
                onChanged: (inputValue) {
                  setState(
                    () {
                      Store.userAnswers.insert(widget.index!, 3);
                      if(value2){
                        value2 = false;
                        value3 = !value3;
                      }else if (value1){
                        value1 = false;
                        value3 = !value3;
                      }else if(value4){
                        value4 = false;
                        value3 = !value3;
                      }else{
                        value3 = !value3;
                      }
                    },
                  );
                },
              ),
              SizedBox(width: 10.w),
              Text(
                widget.answerC!,
                style: getTextStyle(
                  fontWeight: FontWeight.normal,
                  context: context,
                  fontSize: 14.sp,
                  color: black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
                // Rounded Checkbox
                value: value4,
                onChanged: (inputValue) {
                  setState(
                    () {
                      Store.userAnswers.insert(widget.index!, 4);
                      if(value2){
                        value2 = false;
                        value4 = !value4;
                      }else if (value3){
                        value3 = false;
                        value4 = !value4;
                      }else if(value1){
                        value1 = false;
                        value4 = !value4;
                      }else{
                        value4 = !value4;
                      }
                    },
                  );
                },
              ),
              SizedBox(width: 10.w),
              Text(
                widget.answerD!,
                style: getTextStyle(
                  fontWeight: FontWeight.normal,
                  context: context,
                  fontSize: 14.sp,
                  color: black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
