import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterinterview/data/models/todo.dart';
import 'package:flutterinterview/presentation/bloc/todos_bloc.dart';
import 'package:flutterinterview/presentation/widgets/todo_widget.dart';

class TodosPage extends StatefulWidget {
  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your todos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.update, color: Colors.black),
            onPressed: () => BlocProvider.of<TodosBloc>(context).add(TapOnReloadButton())
          )
        ],
      ),
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state is Loading){
            return Center(child: CircularProgressIndicator());
          } else if (state is SomeErrorHappened) {
            return Center(child: Text('Some error happened. Please try again'));
          } else if (state is TodosUpdated) {
            return ListView.builder(itemCount: state.listTodos.length, itemBuilder: (context, index) {
              Todo item = state.listTodos[index];
              return TodoWidget(
                title:item.title,
                completed: item.completed
              );
            });
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
