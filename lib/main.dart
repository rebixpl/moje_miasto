import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moje Miasto',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFF211A4C),
          primary: Color(0xFF293462),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
