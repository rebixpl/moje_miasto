import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/login/widgets/forgot_password_button.dart';
import 'package:moje_miasto/screens/login/widgets/google_auth_button.dart';
import 'package:moje_miasto/screens/login/widgets/login_screen_texts.dart';
import 'package:moje_miasto/screens/login/widgets/logo.dart';
import 'package:moje_miasto/theme.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  GoBackButton(),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  const SizedBox(height: 20.0),
                  const Logo(),
                  const SizedBox(height: 20.0),
                  Text(
                    'O NAS',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: 'Montserrat',
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0,
                        ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
