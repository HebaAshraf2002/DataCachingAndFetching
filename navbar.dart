import 'package:flutter/material.dart';
import 'package:getting_api_local_datatask2/views/Cached_Users.dart';
import 'package:getting_api_local_datatask2/views/Users_profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key, required String title});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;
  List<Widget> pages = [UsersProfile(title: ''), CachedUsers()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          'User App',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              selectedIndex = val;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                label: "Users Data", icon: Icon(Icons.group)),
            BottomNavigationBarItem(
                label: "Cached User", icon: Icon(Icons.storage))
          ]),
    );
  }
}
