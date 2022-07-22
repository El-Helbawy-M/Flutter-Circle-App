class Task {
  final String id;
  final String name;
  final DateTime deadline;
  final String imageUrl;
  final String description;
  final String taskFileUrl;

  Task({
    required this.id,
    required this.name,
    required this.deadline,
    required this.imageUrl,
    required this.description,
    required this.taskFileUrl,
  });
}
