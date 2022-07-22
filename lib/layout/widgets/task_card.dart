import 'package:flutter/material.dart';
import 'package:flutter_app_circle/layout/screens/task_details_screen.dart';
import 'package:flutter_app_circle/layout/tools/app_localizer.dart';
import '../../data/models/task.dart';

class TaskCard extends StatelessWidget {
  final Task _task;
  const TaskCard(this._task, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(9.0),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TaskDetailsScreen(_task)));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Center(
                child: Image.network(
                  _task.imageUrl,
                  width: 64,
                  height: 64,
                ),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _task.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "${getLang(context, "deadline")}: ${_task.deadline.toString()}",
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
