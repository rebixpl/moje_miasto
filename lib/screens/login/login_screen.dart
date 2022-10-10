import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/language_selector.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                LanguageSelector(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
