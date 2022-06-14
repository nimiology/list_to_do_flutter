import 'user.dart';

class Team {
  final int id;
  String title;
  final User owner;
  List<User>? users;
  String? profile;
  String? inviteSlug;

  Team({
    required this.id,
    required this.title,
    required this.owner,
    this.users,
    this.profile,
    this.inviteSlug,
  });
  static fromJson(Map<String, dynamic> json) => Team(
        id: json['id'],
        title: json['title'],
        owner: User.fromJson(json['owner']),
        users: json['users'] != null
            ? List<User>.from(json['users'].map((x) => User.fromJson(x)))
            : null,
        profile: json['profile'],
        inviteSlug: json['inviteSlug'],
      );
}
