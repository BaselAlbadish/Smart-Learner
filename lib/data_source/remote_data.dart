import 'dart:convert';

import 'package:smart_learner/models/article.dart';
import 'package:smart_learner/models/quiz.dart';
import 'package:smart_learner/models/student.dart';
import 'package:http/http.dart' as http;

import '../models/course.dart';

class RemoteData {
  String ritaIP = "http://192.168.1.5:5000";

  Future<int> postStudent(Student student) async {
    Uri url = Uri.parse(
        "$ritaIP/post_student?name=${student.name}&perception=${student.perception}&input=${student.input}&processing=${student.processing}&understanding=${student.understanding}&email=${student.email}&password=${student.password}");
    http.Response res;
    try {
      res = await http.post(url);
      print("ID  : " + res.body.toString());
      return int.parse(res.body);
    } catch (e) {
      print(e);
      return 0;
    }
  }

  Future<String> getSubCourse(String goal) async {
    Uri url = Uri.parse("$ritaIP/get_course_by_goal?goalName=$goal");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        return res.body.toString();
      } else {
        print(res.statusCode.toString());
        return "";
      }
    } catch (e) {
      print(e);
      return "";
    }
  }

  Future<List<Course>> generateStudyPlan(int id, String goal) async {
    Uri url = Uri.parse("$ritaIP/get_study_paln?student_id=$id&goal=$goal");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        List<Course> courses = [];
        final List<dynamic> parsed = json.decode(res.body)["0"];
        for (int i = 0; i < parsed.length; i++) {
          courses.add(Course.fromJson(parsed[i]));
        }
        return courses;
      } else {
        print(res.statusCode.toString());
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<Article>> getRecommendedArticleBasedOnGoal(String goal) async {
    Uri url = Uri.parse("$ritaIP/get_goal_recommendations?goal=$goal");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        List<Article> articles = [];
        final Map<String, dynamic> parsed = json.decode(res.body);
        for (int i = 0; i < parsed.length; i++) {
          articles.add(Article.fromJson(parsed[i.toString()]));
        }
        return articles;
      } else {
        print(res.statusCode.toString());
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<Article>> getSimilarItems(int article) async {
    Uri url = Uri.parse("$ritaIP/get_similar_items?id=$article");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        List<Article> articles = [];
        final Map<String, dynamic> parsed = json.decode(res.body);

        for (int i = 0; i < parsed.length; i++) {
          articles.add(Article.fromJson(parsed[i.toString()]));
        }
        return articles;
      } else {
        print(res.statusCode.toString());
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<bool> addToFavorite(int userId, articleId) async {
    Uri url = Uri.parse("$ritaIP/add_to_favorite?id=$articleId&userid=$userId");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        return true;
      } else {
        print(res.statusCode.toString());
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<Article>> getFavoriteRecommendation(int id) async {
    Uri url = Uri.parse("$ritaIP/get_recommendations?userid=$id");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        List<Article> articles = [];
        final Map<String, dynamic> parsed = json.decode(res.body);

        for (int i = 0; i < parsed.length; i++) {
          articles.add(Article.fromJson(parsed[i.toString()]));
        }
        return articles;
      } else {
        print(res.statusCode.toString());
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<Article>> getTrendingArticles() async {
    Uri url = Uri.parse("$ritaIP/get_random_articles");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        List<Article> articles = [];
        final Map<String, dynamic> parsed = json.decode(res.body);

        for (int i = 0; i < parsed.length; i++) {
          articles.add(Article.fromJson(parsed[i.toString()]));
        }
        return articles;
      } else {
        print(res.statusCode.toString());
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<Quiz>> getQuiz(int quizId) async {
    Uri url = Uri.parse("$ritaIP/get_quiz_by_id?id=$quizId");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        List<Quiz> quizzes = [];
        final Map<String, dynamic> parsed = json.decode(res.body);
        print(parsed[0.toString()]["answers"]);
        for (int i = 0; i < parsed.length; i++) {
          List<String> answers = parsed[i.toString()]['answers'].toString().split(",");
          int id = parsed[i.toString()]['id'];
          String question = parsed[i.toString()]['question'];
          int right = parsed[i.toString()]['right'];

          Quiz quiz = Quiz(right: right, answers: answers, question: question, id: id);

          quizzes.add(quiz);
        }
        return quizzes;
      } else {
        print(res.statusCode.toString());
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<Article>> searchArticle(String word) async{
    Uri url = Uri.parse("$ritaIP/search_articles?text_to_search=$word");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        List<Article> articles = [];
        final Map<String, dynamic> parsed = json.decode(res.body);

        for (int i = 0; i < parsed.length; i++) {
          articles.add(Article.fromJson(parsed[i.toString()]));
        }
        return articles;
      } else {
        print(res.statusCode.toString());
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
