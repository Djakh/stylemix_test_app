import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stylemix_test_app/models/users.dart';
import 'package:stylemix_test_app/repositories/util/utils.dart';

class UserRepository {
  static Future<User> fetchUser(http.Client client) async {
    // final response = await RepositoryUtils.fetchData(client, "${Api.users}/me");

    // Parse response.
    // var data = json.decode(response.body);

    return User.fromJson({});
  }
}
