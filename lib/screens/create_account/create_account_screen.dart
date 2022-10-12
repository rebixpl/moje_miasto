import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/create_account/widgets/create_account_form.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/screens/login/widgets/google_auth_button.dart';
import 'package:moje_miasto/screens/login/widgets/thin_divider.dart';
import 'package:moje_miasto/theme.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0),
                      Text(
                        'utwórz konto'.toUpperCase(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const FullWidthDivider(),
                      const SizedBox(height: 20.0),
                      Text(
                        'Powiedz nam coś o sobie 😀',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                      ),
                      const SizedBox(height: 20.0),
                      CreateAccountForm(
                        formKey: _formKey,
                        emailController: _emailController,
                        passwordController: _passwordController,
                        usernameController: _usernameController,
                      ),
                      const SizedBox(height: 40.0),
                      const Text(
                          'avatar selector'), // TODO: avatar selector widget
                      const SizedBox(height: 60.0),
                      BigElevatedButton(
                        text: 'Kontynuuj',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // TODO: Logowanie przez email i haslo, potem nawigacja do home screen >>> BLOC AUTORYZACJI
                            debugPrint(
                                'email and password validated successfully! >>> zaloguj i nawiguj do home screen');
                          } else {
                            debugPrint('ERROR validating email and password!');
                          }
                        },
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          ThinDivider(),
                          SizedBox(width: 6.0),
                          GoogleAuthButton(isWide: true),
                          SizedBox(width: 6.0),
                          ThinDivider(),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Po zarejstrowaniu zgadzasz sie na',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 9.0,
                            ),
                          ),
                          TextButton(
                            // TODO: Navigate to TOS SCREEN
                            onPressed: () =>
                                debugPrint('Navigate to TOS Screen'),
                            child: Text(
                              'Zasady & Warunki Użytkowania',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 9.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
