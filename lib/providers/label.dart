import 'user.dart';

class Label {
  final int id;
  final User user;
  String title;

  Label({
    required this.id,
    required this.user,
    required this.title,
  });

  static fromJson(Map<String, dynamic> json) => Label(
      id: json['id'],
      user: User.fromJson(json['user']),
      title: json['title'],
    );
  }

