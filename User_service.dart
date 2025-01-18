import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:getting_api_local_datatask2/models/User_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  String endpoint = "https://jsonplaceholder.typicode.com/users";

  Future<List<User>> getUsers() async {
    List<User> users = [];
    try {
      var response = await Dio().get(endpoint);
      var data = response.data;
      var cachedData = jsonEncode(data);
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('usersData', cachedData);
      data.forEach((json) {
        User user = User.fromJson(json);
        users.add(user);
      });
    } catch (e) {
      print(e.toString());
    }
    return users;
  }
}
