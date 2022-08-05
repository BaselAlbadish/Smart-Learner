import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/models/article.dart';
import '../../core/constant_logic.dart';
import '../../core/main_constants.dart';
import '../../core/store.dart';
import '../../data_source/remote_data.dart';
import '../Home/article_card.dart';

class ArticleViewer extends StatefulWidget {
  ArticleViewer({required this.article, Key? key}) : super(key: key);

  Article article;

  @override
  State<ArticleViewer> createState() => _ArticleViewerState();
}

class _ArticleViewerState extends State<ArticleViewer> {
  RemoteData remoteData = RemoteData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 50.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: (getScreenWidth(context) * 3/4) - 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Builder(builder: (context) {
                  List<String> items = widget.article.text!.split("--\n");
                  List<String> texts = items[0].split("\n");
                  return Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: SingleChildScrollView(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: texts.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(left: 15.w,right: 15.w),
                              child: Text(
                                texts[index],
                                style: getTextStyle(
                                  fontWeight: FontWeight.normal,
                                  context: context,
                                  fontSize: 25.sp,
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }),
                    ),
                  );
                }),
              ),
              Container(
                width: (getScreenWidth(context) * 1/4),
                height: getScreenHeight(context),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Center(
                        child: Text(
                          'Similar Articles',
                          style: TextStyle(
                            fontSize: 32.sp,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: getScreenHeight(context) - 100,
                        child: FutureBuilder(
                            future: remoteData.getSimilarItems(widget.article.id!),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasData) {
                                Store.articlesBasedOnArticle = snapshot.data as List<Article>;
                                return ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: Store.articlesBasedOnArticle.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Padding(
                                      padding: EdgeInsets.all(25),
                                      child: ArticleCard(
                                        article: Store.articlesBasedOnArticle[index],
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      bottom: (getScreenWidth(context) / 2) - 25,
                                      top: (getScreenWidth(context) / 2) - 25),
                                  child: SizedBox(
                                    width: 50.h,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              }
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
