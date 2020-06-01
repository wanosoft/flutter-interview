// {
//     "userId": 1,
//     "id": 1,
//     "title": "delectus aut autem",
//     "completed": false
//   },

import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({this.title, this.completed, this.id, this.userId});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'],
      completed: json['completed'] as bool
    );
  }

  @override
  List<Object> get props => [userId, id, title, completed];

}