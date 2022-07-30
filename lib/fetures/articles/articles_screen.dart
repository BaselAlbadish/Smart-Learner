import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/appBar.dart';
import 'package:smart_learner/core/bottomBar.dart';
import 'package:smart_learner/core/constant_logic.dart';
import 'package:smart_learner/core/main_constants.dart';
import 'package:smart_learner/fetures/Home/article_card.dart';
import 'package:smart_learner/fetures/articles/articles_directory.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(selectedIndex: 1,),
              Container(
                width: getScreenWidth(context),
                height: 250.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/s_blue.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Articles Directory",
                      style: getTextStyle(
                        fontWeight: FontWeight.normal,
                        context: context,
                        fontSize: 30.sp,
                        color: white,
                      ),
                    ),
                    Text(
                      "To read more about subjects that ignite your interest",
                      style: getTextStyle(
                        fontWeight: FontWeight.normal,
                        context: context,
                        fontSize: 20.sp,
                        color: white,
                      ),
                    ),
                    Container(
                      height: 60.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFF83D6D4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 1),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ArticlesDirectory();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "View Articles Directory",
                          style: getTextStyle(
                            fontWeight: FontWeight.bold,
                            context: context,
                            fontSize: 24.sp,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: 70.h,color: Colors.white,),
              Container(
                  height: 480.h,
                  width: getScreenWidth(context),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F9FD),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 52.h),
                        child: Center(child: Text('Recent readings',style: TextStyle(fontSize: 32.sp,fontWeight: FontWeight.w300,),),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ArticleCard(index: 0),
                          ArticleCard(index: 1),
                          ArticleCard(index: 3),
                          ArticleCard(index: 2),
                        ],
                      ),
                    ],
                  )
              ),
              Container(height: 70.h,color: Colors.white,),

              Container(
                  height: 480.h,
                  width: getScreenWidth(context),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F9FD),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 52.h),
                        child: Center(child: Text('Recent readings',style: TextStyle(fontSize: 32.sp,fontWeight: FontWeight.w300,),),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ArticleCard(index: 0),
                          ArticleCard(index: 1),
                          ArticleCard(index: 3),
                          ArticleCard(index: 2),
                        ],
                      ),
                    ],
                  )
              ),
              Container(height: 70.h,color: Colors.white,),
              Container(
                  height: 480.h,
                  width: getScreenWidth(context),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F9FD),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 52.h),
                        child: Center(child: Text('Recent readings',style: TextStyle(fontSize: 32.sp,fontWeight: FontWeight.w300,),),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ArticleCard(index: 0),
                          ArticleCard(index: 1),
                          ArticleCard(index: 3),
                          ArticleCard(index: 2),
                        ],
                      ),
                    ],
                  )
              ),
              Container(height: 70.h,color: Colors.white,),
              MyBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
