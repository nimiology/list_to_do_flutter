import 'package:flutter/material.dart';

import 'label.dart';
import 'section.dart';
import 'user.dart';

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

  static fromJson(Map<String, dynamic> json) => Task(
      id: json['id'],
      owner: User.fromJson(json['owner']),
      section: Section.fromJson(json['section']),
      title: json['title'],
      assignee: json['assignee'] != null ? User.fromJson(json['assignee']) : null,
      task: json['task'] != null ? Task.fromJson(json['task']) : null,
      description: json['description'],
      color: json['color'],
      label: json['label'] != null ? Label.fromJson(json['label']) : null,
      priority: json['priority'],
      position: json['position'] as int?);
}

class Tasks with ChangeNotifier{
  List<Task> _tasks = [];

  List<Task> get tasks{
    return [..._tasks];
  }
}