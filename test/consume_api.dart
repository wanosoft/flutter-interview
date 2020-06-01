import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutterinterview/data/api_provider.dart';
import 'package:flutterinterview/data/models/todo.dart';
import 'package:flutterinterview/domain/todos_repository.dart';

void main() {
  test('Get information', () async {
    try {
      var response = await ApiProvider.getSomeData('https://jsonplaceholder.typicode.com/users/1/todos');
      print(response);
    } on TimeoutException {
      print('TimeoutException');
    }
  });

  test('Parsing info', () async {
    TodosRepository repository =  new TodosRepository();
    List<Todo> todosList = await repository.getTodos();
    Todo todo = todosList.first;
    expect(todo.runtimeType, Todo().runtimeType);
  });
}