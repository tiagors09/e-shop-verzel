import 'package:flutter/material.dart';
import 'package:frontend/home.dart';
import 'package:frontend/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
      },
      theme: ThemeData(brightness: Brightness.light),
    );
  }
}
