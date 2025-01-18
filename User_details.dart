import 'package:flutter/material.dart';
import 'package:getting_api_local_datatask2/models/User_model.dart';

class UserDetails extends StatefulWidget {
  User userData;
  UserDetails({super.key, required this.userData});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'User Details',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Name',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              subtitle: Text(
                widget.userData.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Username',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              subtitle: Text(
                widget.userData.username,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                'Email',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              subtitle: Text(widget.userData.email,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                'phone',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              subtitle: Text(
                widget.userData.phone,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text(
                'Website',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              subtitle: Text(
                widget.userData.website,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text(
                'Company',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              subtitle: Text(
                widget.userData.company.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(
                'Address',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              subtitle: Text(
                widget.userData.address.city,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
