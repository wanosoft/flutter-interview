part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();
}

class TapOnReloadButton extends TodosEvent {
  const TapOnReloadButton();
  @override
  List<Object> get props => [];
}