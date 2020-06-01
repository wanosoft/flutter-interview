import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutterinterview/data/models/todo.dart';
import 'package:flutterinterview/domain/todos_repository.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {

  final TodosRepository repository;
  TodosBloc(this.repository);

  @override
  TodosState get initialState => TodosInitial();

  @override
  Stream<TodosState> mapEventToState(
    TodosEvent event,
  ) async* {
    if (event is TodosInitial) {
      yield Loading();
      try {
        List<Todo> todosList = await repository.getTodos();
        yield TodosUpdated(todosList);
      } catch (e) {
        yield SomeErrorHappened(e.toString());
      }
    } else if (event is TapOnReloadButton) {
      yield Loading();
      try {
        List<Todo> todosList = await repository.getTodos();
        yield TodosUpdated(todosList);
      } catch (e) {
        yield SomeErrorHappened(e.toString());
      }
    }
  }
}
