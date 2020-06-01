import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String title;
  final bool completed;
  const TodoWidget({Key key, this.title, this.completed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: completed ? Icon(Icons.check) : SizedBox()
    );
  }
}