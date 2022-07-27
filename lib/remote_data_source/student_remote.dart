import 'package:dio/dio.dart';
import 'package:smart_learner/models/student.dart';

Future<int> postStudent(Student student) async {
  String url =
      "http://127.0.0.1:5000/post_student?name=${student.name}&perception=${student.perception}&input=${student.input}&processing=${student.processing}&understanding=${student.understanding}";
  Dio dio = Dio();
  Response res;
  try {
    res = await dio.post(url);
    return res.statusCode!;
  } catch (e) {
    return 0;
  }
}
