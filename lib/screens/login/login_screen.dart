import 'package:flutter/material.dart';

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
              children: [
                Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: ,
                  ),
                ),
                Text(
                  "Język/мова",
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ],
            ),
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
