import 'package:flutter/material.dart';
import 'package:flutter_app_circle/data/models/task.dart';
import 'package:flutter_app_circle/layout/tools/app_localizer.dart';

class TaskDetailsScreen extends StatefulWidget {
  final Task _task;
  const TaskDetailsScreen(this._task, {Key? key}) : super(key: key);

  @override
  State<TaskDetailsScreen> createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  int? _uploadType = 0; //link = 0, files = 1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._task.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Image.network(
                widget._task.imageUrl,
                width: 64,
                height: 64,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text("${getLang(context, "description")}:"),
                const SizedBox(width: 10),
                Text(widget._task.description),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text("${getLang(context, "deadline")}:"),
                const SizedBox(width: 10),
                Text(widget._task.deadline.toString()),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text("${getLang(context, "download_task")}:"),
                const SizedBox(width: 10),
                ElevatedButton(
                  child: Text(
                    "${getLang(context, "download")}",
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text("${getLang(context, "upload_type")}:"),
                const SizedBox(width: 10),
                Radio<int>(
                  value: 0,
                  groupValue: _uploadType,
                  onChanged: (value) {
                    setState(() {
                      _uploadType = value;
                    });
                  },
                ),
                Text("${getLang(context, "link")}"),
                const SizedBox(width: 20),
                Radio<int>(
                  value: 1,
                  groupValue: _uploadType,
                  onChanged: (value) {
                    setState(() {
                      _uploadType = value;
                    });
                  },
                ),
                Text("${getLang(context, "files")}"),
              ],
            ),
            const SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                child: Text(
                  "${getLang(context, "upload")}",
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
