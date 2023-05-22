import 'dart:convert';

class ToDos {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  ToDos({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory ToDos.fromJson(Map<String, dynamic> json) => ToDos(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}

List<ToDos> toDosFromJson(String str) =>
    List<ToDos>.from(json.decode(str).map((x) => ToDos.fromJson(x)));

String toDosToJson(List<ToDos> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
