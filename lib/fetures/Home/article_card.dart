import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_learner/core/main_constants.dart';
import 'package:smart_learner/data_source/remote_data.dart';
import 'package:smart_learner/fetures/articles/article_viewer.dart';
import 'package:smart_learner/models/article.dart';

import '../../core/store.dart';

class ArticleCard extends StatefulWidget {
  ArticleCard({required this.article, Key? key}) : super(key: key);

  Article article;

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  Color favorite = Colors.black54;
  RemoteData remoteData = RemoteData();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ArticleViewer(article: widget.article);
            },
          ),
        );
      },
      child: SizedBox(
        height: 450.h,
        width: 300.w,
        child: Column(
          children: [
            Container(
                width: 250.w,
                height: 200.h,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Image.asset(
                  "assets/images/ArticlesImages/${widget.article.id}.jpg",
                  fit: BoxFit.cover,
                  errorBuilder: (context, exception, stackTrace) {
                    return Image.asset(
                      "assets/images/article.png",
                      fit: BoxFit.cover,
                    );
                  },
                )),
            SizedBox(height: 10.h),
            Text(
              widget.article.title ?? "",
              style: getTextStyle(
                fontWeight: FontWeight.normal,
                context: context,
                fontSize: 20.sp,
                color: black,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ArticleViewer(article: widget.article);
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Read Article",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp,
                      color: const Color(0xFF007E7E),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await remoteData.addToFavorite(Store.studentId, widget.article.id);

                    setState(() {
                      if (favorite == Colors.red) {
                        favorite = Colors.white;
                      } else {
                        favorite = Colors.red;
                      }
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: favorite,
                    size: 24.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
