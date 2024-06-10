class Api {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Api({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Api.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }
}
