import 'label_model.dart';
import 'section_model.dart';
import 'user_model.dart';

class Task {
  final int id;
  final User owner;
  final Section section;
  User? assignee;
  Task? task;
  String title;
  String? description;
  String? color;
  Label? label;
  String? priority;
  int? position;
  bool? completed;
  DateTime? schedule;
  String? every;
  DateTime? completedDate;

  Task({
    required this.id,
    required this.owner,
    required this.section,
    required this.title,
    this.assignee,
    this.task,
    this.description,
    this.color,
    this.label,
    this.priority,
    this.position,
    this.completed,
    this.schedule,
    this.every,
    this.completedDate,
  });
}
