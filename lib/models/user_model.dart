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
}