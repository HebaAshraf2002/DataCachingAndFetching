import 'package:flutter/material.dart';
import 'package:getting_api_local_datatask2/models/User_model.dart';
import 'package:getting_api_local_datatask2/services/User_service.dart';
import 'package:getting_api_local_datatask2/views/Cached_Users.dart';
import 'package:getting_api_local_datatask2/views/User_details.dart';

class UsersProfile extends StatefulWidget {
  const UsersProfile({super.key, required String title});

  @override
  State<UsersProfile> createState() => _UsersProfileState();
}

class _UsersProfileState extends State<UsersProfile> {
  bool leading = true;
  List<User> users = [];
  getMyUsers() async {
    users = await UserService().getUsers();
    leading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getMyUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: leading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UserDetails(userData: users[index])),
                      );
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 160, 198, 229),
                        child: Icon(
                          Icons.person,
                          color: const Color.fromARGB(255, 40, 78, 145),
                        ),
                      ),
                      title: Text('Name : ${users[index].name}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      subtitle: Text(
                        'Email : ${users[index].email}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 13),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
