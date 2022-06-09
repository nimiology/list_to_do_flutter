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
}
