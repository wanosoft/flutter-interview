import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterinterview/domain/todos_repository.dart';
import 'package:flutterinterview/presentation/bloc/todos_bloc.dart';
import 'package:flutterinterview/presentation/todos_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Interview',
        theme: ThemeData(
          primaryColor: Colors.white
        ),
        home: BlocProvider(
          create: (context) => TodosBloc(TodosRepository()),
          child: TodosPage(),
        ),
        // home: TodosPage(),
      );
}
