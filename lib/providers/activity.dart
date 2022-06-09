import 'project.dart';
import 'user.dart';
import 'section.dart';
import 'task.dart';
import 'comment.dart';


class Activity{
  final User? assignee;
  final Project? project;
  final Section? section;
  final Task? task;
  final Comment? comment;
  final String status;
  final String? description;

  Activity({
    this.assignee,
    this.project,
    this.section,
    this.task,
    this.comment,
    required this.status,
    this.description,
});
}