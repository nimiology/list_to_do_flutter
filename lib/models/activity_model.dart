import 'project_model.dart';
import 'user_model.dart';
import 'section_model.dart';
import 'task_model.dart';
import 'comment_model.dart';


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