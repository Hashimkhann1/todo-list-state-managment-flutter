import 'package:flutter/material.dart';
import 'package:todoliststatemanagment/models/task.dart';
import 'package:todoliststatemanagment/widgets/task_tile.dart'; //material package

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: "buy bread"),
    Task(name: "buy bread"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskTile: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkBoxCallback: (bool? ceckboxState){
          setState((){
            tasks[index].toggleDone();
          });
        },
      );
    }, itemCount: tasks.length,);
  }
}
