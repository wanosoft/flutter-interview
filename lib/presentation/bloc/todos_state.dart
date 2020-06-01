part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();
}

class TodosInitial extends TodosState {
  const TodosInitial();
  @override
  List<Object> get props => [];
}

class TodosUpdated extends TodosState {
  final List<Todo> listTodos;
  const TodosUpdated(this.listTodos);
  @override
  List<Object> get props => [listTodos];
}

class SomeErrorHappened extends TodosState {
  final String message;
  const SomeErrorHappened(this.message);

  @override
  List<Object> get props => [message];
}

class Loading extends TodosState {
  const Loading();
  @override
  List<Object> get props => [];
}
