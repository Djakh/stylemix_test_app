import 'dart:convert';

import 'package:collection/collection.dart'; // You have to add this manually, for some reason it cannot be added automatically
import 'package:flutter/services.dart';
import 'package:stylemix_test_app/models/user.dart';

class UserRepository {
  static Future<User?> getUser() async {
    User? user;
    return user;
  }

  static Future<User?> login(String login, String password) async {
    String jsonData = await rootBundle.loadString('assets/json/users.json');

    List<dynamic> jsonList = json.decode(jsonData);
    List<User> userList = jsonList.map((json) => User.fromJson(json)).toList();

    User? user = userList.firstWhereOrNull((user) => user.login == login && user.password == password);

    return user;
  }
}
