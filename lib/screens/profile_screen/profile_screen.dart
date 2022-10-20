import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/app/app.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Profile Page'),
            Text('Email: ${user.email}'),
            MaterialButton(
              key: const Key('homePage_logout_iconButton'),
              child: const Text('Wyloguj się'),
              onPressed: () =>
                  context.read<AppBloc>().add(AppLogoutRequested()),
            ),
          ],
        ),
      ),
    );
  }
}
