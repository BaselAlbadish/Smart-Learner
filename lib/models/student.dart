class Student {
  String? name;
  int? perception;
  int? input;
  int? processing;
  int? understanding;

  Student(
      {this.name,
        this.perception,
        this.input,
        this.processing,
        this.understanding});

  Student.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    perception = json['perception'];
    input = json['input'];
    processing = json['processing'];
    understanding = json['understanding'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['perception'] = perception;
    data['input'] = input;
    data['processing'] = processing;
    data['understanding'] = understanding;
    return data;
  }
}