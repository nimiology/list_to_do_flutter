import 'team.dart';
import 'user.dart';

class Project {
  final int id;
  String title;
  final User owner;
  Project? project;
  Team? team;
  String? inviteSlug;
  bool archive;
  bool inbox;
  DateTime? schedule;

  Project({
    required this.id,
    required this.title,
    required this.owner,
    this.project,
    this.team,
    this.inviteSlug,
    this.archive = false,
    this.inbox = false,
    this.schedule,
  });

  static fromJson(Map<String, dynamic> json) =>
      Project(
          id: json['id'],
          title: json['title'],
          owner: User.fromJson(json['owner']),
          project: json['project'] != null
              ? Project.fromJson(json['project'])
              : null);
}

