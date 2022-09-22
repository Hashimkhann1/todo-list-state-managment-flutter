import 'package:flutter/material.dart';
import 'package:todoliststatemanagment/widgets/task_tile.dart'; //material package

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile()
      ],
    );
  }
}
