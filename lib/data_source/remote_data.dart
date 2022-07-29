import 'package:dio/dio.dart';
import 'package:smart_learner/models/student.dart';

class RemoteData {
  Dio dio = Dio();

  Future<int> postStudent(Student student) async {
    String url =
        "http://127.0.0.1:5000/post_student?name=${student.name}&perception=${student.perception}&input=${student.input}&processing=${student.processing}&understanding=${student.understanding}";
    Response res;
    try {
      res = await dio.post(url);
      return res.statusCode!;
    } catch (e) {
      return 0;
    }
  }

  Future<List<String>> getSubCourse(String goal) async {
    String url = "http://127.0.0.1:5000/get_course_by_goal?goalName=$goal";
    Response res;
    try {
      res = await dio.post(url);
      if (res.statusCode == 200) {
        print(res.data.toString());
        return res.data! as List<String>;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<String>> generateStudyPlan(int id, List<String> pk, String goal) async {
    String url = "http://127.0.0.1:5000/";
    Response res;
    try {
      res = await dio.post(url);
      if (res.statusCode == 200) {
        return res.data! as List<String>;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<String>> getRecommendedArticleBasedOnGoal(String goal) async {
    String url = "http://127.0.0.1:5000/";
    Response res;
    try {
      res = await dio.post(url);
      if (res.statusCode == 200) {
        return res.data! as List<String>;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<String>> getRecommendedArticleBasedOnArticle(String article) async {
    String url = "http://127.0.0.1:5000/";
    Response res;
    try {
      res = await dio.post(url);
      if (res.statusCode == 200) {
        return res.data! as List<String>;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
