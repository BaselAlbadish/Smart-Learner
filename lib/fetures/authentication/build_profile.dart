import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:file_picker/file_picker.dart';
import 'package:smart_learner/fetures/ILS_Quiz/ils_Store.dart';
import '../../core/main_constants.dart';
import '../../core/type_ahead.dart';
import '../Home/home.dart';
import '../Home/study_plan_subjects.dart';
import '../ILS_Quiz/ILS_quizz.dart';
import 'subject_card.dart';

class BuildProfile extends StatefulWidget {
  const BuildProfile({Key? key}) : super(key: key);

  @override
  State<BuildProfile> createState() => _BuildProfileState();
}

class _BuildProfileState extends State<BuildProfile> {
  FilePickerResult? result;
  String goal = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            const Expanded(
              flex: 2,
              child: Image(
                image: AssetImage("assets/images/students.png"),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  const Spacer(flex: 1),
                  Center(
                    child: Text(
                      "Build profile",
                      style: getTextStyle(
                        fontWeight: FontWeight.bold,
                        context: context,
                        fontSize: 50.sp,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 100.h),
                  TypeAhead(
                    title: 'Type your Goal',
                    titleColor: Colors.black,
                    fontSizeForTitle: 18.sp,
                    text: TextEditingController(),
                    items: const ["Java", "Algorithm", "AI", "python"],
                    errorText: '',
                    hintText: 'AI',
                    width: 360.w,
                    height: 50.h,
                    onChange: (val) {
                      setState(() {
                        goal = val.toString();
                      });
                    },
                  ),
                  SizedBox(height: 50.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bio",
                        style: getTextStyle(
                          fontWeight: FontWeight.normal,
                          context: context,
                          fontSize: 18.sp,
                          color: black,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: 360.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            style: TextStyle(color: black, fontSize: 20.sp),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintStyle: TextStyle(color: const Color(0xff9d9d9d).withOpacity(0.5)),
                              border: InputBorder.none,
                            ),
                            onChanged: (v) {
                              //TODO
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose your previous knowledge",
                        style: getTextStyle(
                          fontWeight: FontWeight.normal,
                          context: context,
                          fontSize: 18.sp,
                          color: black,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 250.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEAECEF),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFFEAECEF).withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 0),
                            ),
                          ],
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: SingleChildScrollView(
                          child: SizedBox(
                            height: 250.h,
                            child: ListView.builder(
                              itemCount: subjects.length,
                              itemBuilder: (BuildContext context, int index) {
                                return SubjectCard(subjectName: subjects[index]);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 3),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.h, left: 150.w),
                    child: Container(
                      height: 50.h,
                      width: 175.w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: RaisedButton(
                        onPressed: goal != ""
                            ? () {
                                IlsStore.goal = goal;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const ILSQuiz();
                                    },
                                  ),
                                );
                              }
                            : null,
                        color: goal == "" ? Colors.grey : primaryColor,
                        child: Text(
                          "submit",
                          style: getTextStyle(
                            fontWeight: FontWeight.bold,
                            context: context,
                            fontSize: 24.sp,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
