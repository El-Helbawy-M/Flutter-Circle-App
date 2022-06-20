import 'package:flutter/material.dart';
import 'package:flutter_app_circle/layout/tools/app_localizer.dart';
import 'package:flutter_app_circle/layout/widgets/task_card.dart';

import '../../data/models/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final tasks = <Task>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    tasks.addAll(
      List.generate(
        20,
        (index) => Task(
          name: "${getLang(context, "task")}",
          imageUrl: "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
          deadline: DateTime.now().add(
            Duration(hours: index),
          ),
        ),
      ),
    );
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => TaskCard(tasks[index]),
          separatorBuilder: (context, index) => const SizedBox(height: 7.0),
          itemCount: tasks.length,
        ),
      ),
    );
  }
}
