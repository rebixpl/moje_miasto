import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/forgot_password_button.dart';
import 'package:moje_miasto/screens/login/widgets/informations_button.dart';
import 'package:moje_miasto/screens/login/widgets/language_selector.dart';
import 'package:moje_miasto/screens/login/widgets/logo.dart';
import 'package:moje_miasto/screens/login/widgets/or_sing_up_with_text.dart';
import 'package:moje_miasto/theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  LanguageSelector(),
                  InformationsButton(),
                ],
              ),
              const Spacer(),
              const Logo(),
              const SizedBox(height: 20.0),
              Text(
                "Witaj Spowrotem 👋",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontFamily: 'Montserrat',
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
              ),
              const Spacer(),
              const SizedBox(height: 20.0),
              const ForgotPasswordButton(),
              const SizedBox(height: 20.0),
              const OrSIgnUpWithText(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
