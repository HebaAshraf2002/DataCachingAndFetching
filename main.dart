import 'package:flutter/material.dart';
import 'package:getting_api_local_datatask2/views/Users_profile.dart';
import 'package:getting_api_local_datatask2/views/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navbar(title: 'Flutter Demo Home Page'),
    );
  }
}

