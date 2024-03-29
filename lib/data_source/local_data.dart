import 'dart:convert';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:io';

class LocalData {
  List<String> questions = [];
  List<String> answers = [];
  List<String> rightAnswerIndex = [];


  Future<List<Map>> readJsonFile(String filePath) async {
    var input = await File(filePath).readAsString();
    var map = jsonDecode(input);
    return map['questions'];
  }

  initQuiz(String quizName) async {
    String text = await rootBundle.loadString("assets/quiz/$quizName.csv");
    List<String> lines = text.split("\n");
    for (int i = 1; i < lines.length; i++) {
      try {
        questions.add(lines[i].split(",")[1]);
        rightAnswerIndex.add(lines[i].split(",").last);
        answers.add(lines[1].substring(lines[1].indexOf("["), lines[1].length - 4));
      } catch (e) {
        continue;
      }
    }
    print(answers[1]);
    List<String> answer1 = json.decode(answers[1]) as List<String>;
    print(answer1[1]);

  }
}
