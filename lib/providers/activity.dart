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
  static fromJson(json) => Activity(
      assignee: json['assignee'] != null ? User.fromJson(json['assignee']) : null,
      project: json['project'] != null ? Project.fromJson(json['project']) : null,
      section: json['section'] != null ? Section.fromJson(json['section']) : null,
      task: json['task'] != null ? Task.fromJson(json['task']) : null,
      comment: json['comment'] != null ? Comment.fromJson(json['comment']) : null,
      status: json['status'],
      description: json['description'],);
}