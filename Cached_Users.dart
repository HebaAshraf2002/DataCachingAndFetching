import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getting_api_local_datatask2/models/User_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CachedUsers extends StatefulWidget {
  const CachedUsers({super.key});

  @override
  State<CachedUsers> createState() => _CachedUsersState();
}

class _CachedUsersState extends State<CachedUsers> {
  List<User> cachedUsers = [];
  getUsersFromCached() async {
    final prefs = await SharedPreferences.getInstance();
    String data = prefs.getString('usersData') ?? '';
    var jsonData = jsonDecode(data);
    jsonData.forEach((item) {
      User user = User.fromJson(item);
      cachedUsers.add(user);
    });
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUsersFromCached();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cachedUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 160, 198, 229),
              child: Icon(Icons.person,
                  color: const Color.fromARGB(255, 40, 78, 145)),
            ),
            title: Text(
              cachedUsers[index].name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(cachedUsers[index].email,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: const Color.fromARGB(255, 89, 87, 87))),
            trailing: Text(cachedUsers[index].company.name,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: const Color.fromARGB(255, 89, 87, 87))),
          ));
        },
      ),
    );
  }
}
