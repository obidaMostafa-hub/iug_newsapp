import 'package:flutter/material.dart';
import '/todo_app/data/tasks_data.dart';
import '/todo_app/widgets/task_widget.dart';

class CompleteTasksScreen extends StatefulWidget {
  Function fun;
  CompleteTasksScreen(this.fun);

  @override
  State<CompleteTasksScreen> createState() => _CompleteTasksScreenState();
}

class _CompleteTasksScreenState extends State<CompleteTasksScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList.where((element) => element.isCompleted).toList()[index], widget.fun, () {
            tasksList.remove(tasksList[index]);
            setState(() {});
            print('deleted');
          });
        });
  }
}
