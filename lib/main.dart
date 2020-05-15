import 'package:flutter/material.dart';
import 'package:flutterinterview/todos_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Interview',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: TodosPage(),
      );
}
