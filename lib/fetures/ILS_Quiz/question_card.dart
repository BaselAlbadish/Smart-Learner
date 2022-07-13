import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/main_constants.dart';

class QuestionCard extends StatefulWidget {
  QuestionCard({required this.question, required this.index, required this.answerA, required this.answerB, Key? key})
      : super(key: key);

  String question;
  int index;
  String answerA;
  String answerB;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  bool value1 = false;
  bool value2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.index.toString() + ". " + widget.question,
          style: getTextStyle(
            fontWeight: FontWeight.bold,
            context: context,
            fontSize: 24.sp,
            color: black,
          ),
        ),
        Row(
          children: [
            Checkbox(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))), // Rounded Checkbox
              value: value1,
              onChanged: (inputValue) {
                setState(() {
                  if(value2){
                    value2 = false;
                  }
                  value1 = !value1;
                });
              },
            ),
            SizedBox(width: 10.w),
            Text(
              widget.answerA,
              style: getTextStyle(
                fontWeight: FontWeight.normal,
                context: context,
                fontSize: 16.sp,
                color: black,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))), // Rounded Checkbox
              value: value2,
              onChanged: (inputValue) {
                setState(() {
                  if(value1){
                    value1 = false;
                  }
                  value2 = !value2;
                });
              },
            ),
            SizedBox(width: 10.w),
            Text(
              widget.answerB,
              style: getTextStyle(
                fontWeight: FontWeight.normal,
                context: context,
                fontSize: 16.sp,
                color: black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
