import 'package:flutter/material.dart';
import '/todo_app/data/tasks_data.dart';
import '/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatefulWidget {
  Function fun;
  AllTasksScreen(this.fun);

  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();
}

class _AllTasksScreenState extends State<AllTasksScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index], widget.fun, () {
            tasksList.remove(tasksList[index]);
            setState(() {});
            print('deleted');
          });
        });
  }
}
