class Course {
  String? title;
  String? decription;

  Course({this.decription, this.title});

  Course.fromJson(Map<String, dynamic> json) {
    decription = json['decription'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['decription'] = decription;
    data['title'] = title;
    return data;
  }
}
