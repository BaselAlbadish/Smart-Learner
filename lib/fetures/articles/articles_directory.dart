import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/appBar.dart';
import 'package:smart_learner/core/bottomBar.dart';
import 'package:smart_learner/core/constant_logic.dart';
import 'package:smart_learner/core/main_constants.dart';
import 'package:smart_learner/fetures/Home/article_card.dart';

class ArticlesDirectory extends StatelessWidget {
  const ArticlesDirectory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/blue.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyAppBar(isBlack: false, selectedIndex: 1,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 75.h),
                child: Text(
                  "Articles Directory",
                  style: getTextStyle(
                    fontWeight: FontWeight.normal,
                    context: context,
                    fontSize: 30.sp,
                    color: white,
                  ),
                ),
              ),
              Container(
                height: 60.h,
                width: 352.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, bottom: 14.h),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 14.h),
                        child: Icon(Icons.search, size: 30.w),
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      //TODO
                    },
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(vertical: 72.h, horizontal: 150.w),
                  child: SingleChildScrollView(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        Container(
                          width: 300.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '# A',
                                style:
                                    TextStyle(fontSize: 24.sp, color: Colors.white),
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 360.w,
                        ),
                        Container(
                          width: 300.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '# B',
                                style:
                                    TextStyle(fontSize: 24.sp, color: Colors.white),
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 360.w,
                        ),
                        Container(
                          width: 300.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '# C',
                                style:
                                    TextStyle(fontSize: 24.sp, color: Colors.white),
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Text(
                                    "lrewmGFL SGLM ZFDLK AZDFBLKM AFZD SZSDYGDFYOIU,,OIUO,TMYN",
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // MyBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
