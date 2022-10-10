import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/screens/login/widgets/forgot_password_button.dart';
import 'package:moje_miasto/screens/login/widgets/google_auth_button.dart';
import 'package:moje_miasto/screens/login/widgets/informations_button.dart';
import 'package:moje_miasto/screens/login/widgets/language_selector.dart';
import 'package:moje_miasto/screens/login/widgets/login_screen_texts.dart';
import 'package:moje_miasto/screens/login/widgets/logo.dart';
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
              welcomeBackText(context),
              const Spacer(),
              const SizedBox(height: 20.0),
              BigElevatedButton(
                text: 'Logowanie',
                // TODO: Logowanie przez email i haslo, potem nawigacja do home screen >>> BLOC AUTORYZACJI
                onTap: () => debugPrint('zaloguj i nawiguj do home screen'),
              ),
              const SizedBox(height: 10.0),
              const ForgotPasswordButton(),
              const SizedBox(height: 14.0),
              orSignUpWithGoogleText(context),
              const SizedBox(height: 18.0),
              const GoogleAuthButton(),
              const SizedBox(height: 18.0),
              doesNotHaveAnAccountText(context),
              const SizedBox(height: 20.0),
              BigElevatedButton(
                text: 'Rejestracja',
                onTap: () =>
                    // TODO: Nawiguj do ekranu rejestracji przez email >>> BLOC AUTORYZACJI
                    debugPrint('nawiguj do Rejestracja przez Email'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
