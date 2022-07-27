
import 'package:smart_learner/models/student.dart';

class IlsStore {
  static int inputResult = 0;
  static int perceptionResult = 0;
  static int processingResult = 0;
  static int understandingResult = 0;
  static List<String> subjects = [];
  static List<String> topics = [];
  static Student student = Student();
  static String name = "";
  static String email = "";
  static String password = "";
  static String accountType = "";

  static calculate(int stackIndex, int answerIndex) {
    if (stackIndex == 0) {
      if (answerIndex == 1) {
        inputResult++;
      } else {
        inputResult--;
      }
    } else if (stackIndex == 1) {
      if (answerIndex == 1) {
        perceptionResult++;
      } else {
        perceptionResult--;
      }
    } else if (stackIndex == 2) {
      if (answerIndex == 1) {
        processingResult++;
      } else {
        processingResult--;
      }
    } else {
      if (answerIndex == 1) {
        understandingResult++;
      } else {
        understandingResult--;
      }
    }
  }

}
