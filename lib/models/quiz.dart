class Quiz {
  List<String>? answers;
  int? id;
  String? question;
  int? right;

  Quiz({this.id, this.answers, this.question, this.right});

  Quiz.fromJson(Map<String, dynamic> json) {
    answers = json['answers'];
    id = json['id'];
    question = json['question'];
    right = json['right'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['right'] = right;
    data['question'] = question;
    data['id'] = id;
    data['answers'] = answers;
    return data;
  }
}
