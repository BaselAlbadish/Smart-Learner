import 'package:smart_learner/models/student.dart';
import 'package:http/http.dart' as http;

class RemoteData {
  String ritaIP = "http://192.168.1.5:5000";
  Future<int> postStudent(Student student) async {
    Uri url = Uri.parse(
        "$ritaIP/post_student?name=${student.name}&perception=${student.perception}&input=${student.input}&processing=${student.processing}&understanding=${student.understanding}&email=${student.email}&password=${student.password}");
    http.Response res;
    try {
      res = await http.post(url);
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
      print(res.body.toString());
      if (res.statusCode == 200) {
        print(res.body.toString());
        return res.body.toString();
      } else {
        print("basel");
        print(res.statusCode.toString());
        return "";
      }
    } catch (e) {
      print("rita");
      print(e);
      return "";
    }
  }

  Future<String> generateStudyPlan(int id, String goal) async {
    Uri url = Uri.parse("$ritaIP/get_study_paln?student_id=$id&goal=$goal");

    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        return res.body;
      } else {
        print(res.statusCode.toString());
        return "";
      }
    } catch (e) {
      print(e);
      return "";
    }
  }

  Future<String> getRecommendedArticleBasedOnGoal(String goal) async {
    Uri url = Uri.parse("$ritaIP/get_articles_based_on_goal?goal=$goal");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        return res.body;
      } else {
        print(res.statusCode.toString());
        return "";

      }
    } catch (e) {
      print(e);
      return "";
    }
  }

  Future<List<String>> getRecommendedArticleBasedOnArticle(int article) async {
    Uri url = Uri.parse("$ritaIP/get_articles_based_on_article?article_id=$article");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        return res.body as List<String>;
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
