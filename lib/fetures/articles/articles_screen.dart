import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/appBar.dart';
import 'package:smart_learner/core/bottomBar.dart';
import 'package:smart_learner/core/constant_logic.dart';
import 'package:smart_learner/core/main_constants.dart';
import 'package:smart_learner/fetures/Home/article_card.dart';
import 'package:smart_learner/fetures/articles/articles_directory.dart';
import '../../core/store.dart';
import '../../data_source/remote_data.dart';
import '../../models/article.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  RemoteData remoteData = RemoteData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(
                selectedIndex: 1,
              ),
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
              Container(
                height: 50.h,
                color: Colors.white,
              ),
              Container(
                height: 600.h,
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
                      child: Center(
                        child: Text(
                          'Most Trending',
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(context),
                      child: FutureBuilder(
                          future: remoteData.getTrendingArticles(),
                          builder: (BuildContext context, snapshot) {
                            if (snapshot.hasData) {
                              Store.articlesTrending = snapshot.data as List<Article>;
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: SizedBox(
                                  height: 500.h,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: Store.articlesTrending.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(30),
                                        child: ArticleCard(
                                          article: Store.articlesTrending[index],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                  padding: EdgeInsets.only(
                                      left: (getScreenWidth(context) / 2) - 25,
                                      right: (getScreenWidth(context) / 2) - 25),
                                  child: SizedBox(
                                    height: 50.h,
                                    child: const Center(child: CircularProgressIndicator()),
                                  ));
                            }
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50.h,
                color: Colors.white,
              ),
              Container(
                  height: 600.h,
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
                        child: Center(
                          child: Text(
                            'Recommended For You',
                            style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getScreenWidth(context),
                        child: FutureBuilder(
                            future: remoteData.getFavoriteRecommendation(Store.studentId),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasData) {
                                Store.articlesTrending = snapshot.data as List<Article>;
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: SizedBox(
                                    height: 500.h,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: Store.articlesTrending.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(30),
                                          child: ArticleCard(
                                            article: Store.articlesTrending[index],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              } else {
                                return Padding(
                                    padding: EdgeInsets.only(
                                        left: (getScreenWidth(context) / 2) - 25,
                                        right: (getScreenWidth(context) / 2) - 25),
                                    child: SizedBox(
                                      height: 50.h,
                                      child: const Center(child: CircularProgressIndicator()),
                                    ));
                              }
                            }),
                      ),
                    ],
                  )),
              Container(
                height: 50.h,
                color: Colors.white,
              ),
              MyBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
