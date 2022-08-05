import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/appBar.dart';
import 'package:smart_learner/core/bottomBar.dart';
import 'package:smart_learner/core/constant_logic.dart';
import 'package:smart_learner/fetures/study_plans/study_plan_card.dart';
import '../../core/main_constants.dart';
import '../../core/store.dart';

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
                height: 200.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/s_blue.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    Store.goal.toString(),
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
                height: 50.h,
                color: Colors.white,
              ),
              Center(
                child: Container(
                  width: 1500.w,
                  height: 1000.h,
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
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: 1000.h,
                      child: ListView.builder(
                        itemCount: Store.studyPlan.length,
                        itemBuilder: (BuildContext context, int index) {
                          return StudyPlanCard(
                            courseIndex: index,
                            courseDescription: Store.studyPlan[index].decription!,
                            courseName: Store.studyPlan[index].title!,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const MyBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
