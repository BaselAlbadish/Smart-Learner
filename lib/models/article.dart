class Article {
  int? id;
  String? text;
  String? title;

  Article({this.id, this.text, this.title});

  Article.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['text'] = text;
    data['title'] = title;
    return data;
  }
}
