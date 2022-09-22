import 'package:flutter/material.dart';
import 'package:todoliststatemanagment/view/add_tast_sceen.dart';
import 'package:todoliststatemanagment/widgets/tasks_list.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF63c9fe),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
            isScrollControlled: true,
              builder:(context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen(),
                ),
              ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(top: 50.0,left: 30.0,right: 30.0,bottom: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                        radius: 26.0,
                        child: Icon(
                            Icons.list,
                          size: 36.0,
                          color: Colors.lightBlueAccent,
                        ),
                    ),
                  ),
                  SizedBox(height: 12.0,),
                  Text('Todoey',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text('6 Task',
                    style: TextStyle(
                      color: Colors.white,fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:  Radius.circular(20.0),
                  topRight: Radius.circular(20.0),),
              ),
              child:
              TaskList(),

            ),
          )
        ],
      )
    );
  }
}
