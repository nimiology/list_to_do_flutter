import 'project.dart';

class Section {
  final int id;
  String title;
  final Project project;
  int position;
  bool archive;

  Section({
    required this.id,
    required this.title,
    required this.project,
    required this.position,
    this.archive = false,
  });

  static fromJson(Map<String, dynamic> json) => Section(
      id: json['id'],
      title: json['title'],
      project: Project.fromJson(json['project']),
      position: json['position'],
      archive: json['archive'],
    );
  }

