import 'project.dart';
import 'task.dart';
import 'user.dart';

class Comment{
  final int id;
  final User owner;
  Task? task;
  Project project;
  String description;
  String? url;

  Comment({
    required this.id,
    required this.owner,
    required this.project,
    this.task,
    required this.description,
    this.url,
});
}