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
        primarySwatch: const MaterialColor(
          0xFF211A4C,
          <int, Color>{
            // https://maketintsandshades.com/
            50: Color(0xff1e1744), //10%
            100: Color(0xff1a153d), //20%
            200: Color(0xff171235), //30%
            300: Color(0xff14102e), //40%
            400: Color(0xff110d26), //50%
            500: Color(0xff0d0a1e), //60%
            600: Color(0xff0a0817), //70%
            700: Color(0xff07050f), //80%
            800: Color(0xff030308), //90%
            900: Color(0xff000000), //100%
          },
        ),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFF211A4C),
          primary: Color(0xFF293462),
        ),
        fontFamily: "Montserrat",
      ),
      home: const LoginScreen(),
    );
  }
}
