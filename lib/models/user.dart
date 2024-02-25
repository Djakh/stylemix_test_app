import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class User extends HiveObject {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? username;
  @HiveField(2)
  final String? login;
  @HiveField(3)
  final String? password;
  @HiveField(4)
  final int? age;
  @HiveField(5)
  final String? country;

  User({
    this.id,
    this.username,
    this.login,
    this.password,
    this.age,
    this.country,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      login: json['login'],
      password: json['password'],
      age: json['age'],
      country: json['country'],
    );
  }
}
