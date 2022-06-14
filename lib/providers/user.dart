class User{
  final int id;
  String username;
  String? firstname;
  String? lastname;
  final String email;
  String? profile_img;
  String? header_img;
  String? timezone;
  Map?  setting;
  final DateTime date_joined;

  User({
    required this.id,
    required this.username,
     this.firstname,
     this.lastname,
    required this.email,
    this.profile_img,
    this.header_img,
    this.timezone,
    this.setting,
    required this.date_joined,
});

  static fromJson(Map<String, dynamic> json)=>User(
      id: json['id'],
      username: json['username'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      email: json['email'],
      profile_img: json['profile_img'],
      header_img: json['header_img'],
      timezone: json['timezone'],
      setting: json['setting'],
      date_joined: DateTime.parse(json['date_joined']),
    );
}