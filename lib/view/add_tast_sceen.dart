import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 
          BorderRadius.only(
              topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Add Task',
                hintStyle: TextStyle(
                    color: Colors.lightBlueAccent,
                  fontSize: 18.0
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0)
              ),
            ),
            SizedBox(height: 10.0,),
            TextButton(
              style: TextButton.styleFrom( 
                backgroundColor: Colors.lightBlueAccent
              ),
                onPressed: (){},
                child: Text('ADD',
                  style: TextStyle(
                      color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
