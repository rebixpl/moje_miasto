import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Witaj Baryla!",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Card(
              color: Colors.amber,
              child: SizedBox(
                width: 100.0,
                height: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
