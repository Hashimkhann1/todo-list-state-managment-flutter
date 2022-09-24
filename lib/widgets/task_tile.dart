import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isChecked , this.taskTile, this.checkBoxCallback});
  final bool? isChecked;
  final String? taskTile;
  final void Function(bool?)? checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTile.toString(),style: TextStyle(decoration: isChecked! ? TextDecoration.lineThrough : null ),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

