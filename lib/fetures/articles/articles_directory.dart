import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/appBar.dart';
import 'package:smart_learner/core/main_constants.dart';
import 'package:smart_learner/data_source/remote_data.dart';

import '../../core/constant_logic.dart';
import '../../models/article.dart';
import '../Home/article_card.dart';

class ArticlesDirectory extends StatefulWidget {
  const ArticlesDirectory({Key? key}) : super(key: key);

  @override
  State<ArticlesDirectory> createState() => _ArticlesDirectoryState();
}

class _ArticlesDirectoryState extends State<ArticlesDirectory> {
  RemoteData remoteData = RemoteData();
  List<Article> searchResult = [];

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
              MyAppBar(
                isBlack: false,
                selectedIndex: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h),
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
                    onFieldSubmitted: (value) async {
                      List<Article> temp = await remoteData.searchArticle(value);
                      setState(() {
                        searchResult = temp;
                      });
                    },
                  ),
                ),
              ),
              searchResult != []
                  ? SizedBox(
                      height: 600.h,
                      width: getScreenWidth(context),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 25.h),
                            child: Center(
                              child: Text(
                                'Your Search Result',
                                style: TextStyle(
                                  fontSize: 32.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: getScreenWidth(context),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SizedBox(
                                height: 500.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: searchResult.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: ArticleCard(
                                        article: searchResult[index],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
