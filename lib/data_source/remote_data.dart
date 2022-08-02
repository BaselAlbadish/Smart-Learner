import 'package:smart_learner/models/student.dart';
import 'package:http/http.dart' as http;

class RemoteData {
  Future<int> postStudent(Student student) async {
    Uri url = Uri.parse(
        "http://127.0.0.1:5000/post_student?name=${student.name}&perception=${student.perception}&input=${student.input}&processing=${student.processing}&understanding=${student.understanding}&email=${student.email}&password=${student.password}");
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
    Uri url = Uri.parse("http://127.0.0.1:5000/get_course_by_goal?goalName=$goal");
    http.Response res;
    try {
      res = await http.post(url);
      if (res.statusCode == 200) {
        print(res.body.toString());
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

  Future<String> generateStudyPlan(int id, String goal) async {
    Uri url = Uri.parse("http://127.0.0.1:5000/get_study_paln?student_id=$id&goal=$goal");

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

  Future<List<String>> getRecommendedArticleBasedOnGoal(String goal) async {
    Uri url = Uri.parse("http://127.0.0.1:5000/get_articles_based_on_goal?goal=$goal");
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

  Future<List<String>> getRecommendedArticleBasedOnArticle(int article) async {
    Uri url = Uri.parse("http://127.0.0.1:5000/get_articles_based_on_article?article_id=$article");
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
