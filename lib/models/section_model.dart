import 'project_model.dart';

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
}
