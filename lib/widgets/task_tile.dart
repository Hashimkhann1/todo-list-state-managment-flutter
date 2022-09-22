import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}
class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkboxCallbox (bool? checkboxState){
    setState(() {
      print(checkboxState);
      isChecked = checkboxState ?? true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null ),),
      trailing: TaskCheckBox(checkBoxState: isChecked , toglleCheckboxState: checkboxCallbox,),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  TaskCheckBox({required this.checkBoxState , required this.toglleCheckboxState});

  final bool checkBoxState;
  final void Function(bool?) toglleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        onChanged: toglleCheckboxState,
        );
  }
}
