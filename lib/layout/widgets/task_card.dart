import 'package:flutter/material.dart';
import '../../data/models/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  const TaskCard(this.task, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(9.0),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Center(
                child: Image.network(
                  task.imageUrl,
                  width: 64,
                  height: 64,
                ),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "Deadline: ${task.deadline.toString()}",
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_right,
                size: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
