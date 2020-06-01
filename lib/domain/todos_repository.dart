import 'package:flutterinterview/data/api_provider.dart';
import 'package:flutterinterview/data/constants.dart';
import 'package:flutterinterview/data/models/todo.dart';

class TodosRepository {
  Future<List<Todo>> getTodos() async {
    List<dynamic> response = await ApiProvider.getSomeData(TodoConstants.url);
    List<Todo> todosList = new List();
    
    response.forEach((element) {
      print(element);
      todosList.add(Todo.fromJson(element));
    });
    
    return todosList;
  }
}