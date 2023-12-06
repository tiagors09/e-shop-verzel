import 'package:flutter/material.dart';
import 'package:frontend/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Login(),
      theme: ThemeData(brightness: Brightness.light),
    );
  }
}
