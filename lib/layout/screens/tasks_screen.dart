import 'package:flutter/material.dart';
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

    tasks.addAll(List.generate(
        20,
        (index) => Task(
            name: "Task #$index",
            imageUrl:
                "https://video.fcai22-2.fna.fbcdn.net/v/t1.18169-9/484768_1387868521451208_291062936_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeF0o6hbmwiI8w5Nm8QQEXNICVTX8R73rBwJVNfxHvesHJLh7FB-9MfJ8s6Ud-8ZndmXwt79_brAeRU1bpaDd2E8&_nc_ohc=8kDUNK9t_wEAX-rrCWN&_nc_ht=video.fcai22-2.fna&oh=00_AT9WtBekwY4tEQxLR_t1GYFNL37osKK1x0o1MF_1LblEyw&oe=62AE2867",
            deadline: DateTime.now().add(
              Duration(hours: index),
            ))));
    setState(() {});
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
