import 'package:flutter/material.dart';
import 'package:miarma_app/screens/home_screen.dart';
import 'package:miarma_app/screens/login_screen.dart';
import 'package:miarma_app/screens/profile_screen.dart';
import 'package:miarma_app/screens/register_screen.dart';
import 'package:miarma_app/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Miarma',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterScreen(),
    );
  }
}
