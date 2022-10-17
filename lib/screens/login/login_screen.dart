import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/page_view_screen/page_view_screen.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/screens/login/widgets/forgot_password_button.dart';
import 'package:moje_miasto/screens/login/widgets/google_auth_button.dart';
import 'package:moje_miasto/screens/login/widgets/informations_button.dart';
import 'package:moje_miasto/screens/login/widgets/language_selector.dart';
import 'package:moje_miasto/screens/login/widgets/login_form.dart';
import 'package:moje_miasto/screens/login/widgets/login_screen_texts.dart';
import 'package:moje_miasto/screens/login/widgets/logo.dart';
import 'package:moje_miasto/theme.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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

              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: 60.0),
                      const Logo(),
                      const SizedBox(height: 20.0),
                      welcomeBackText(context),
                      const SizedBox(height: 20.0),
                      LoginForm(
                        formKey: _formKey,
                        emailController: _emailController,
                        passwordController: _passwordController,
                      ),
                      const SizedBox(height: 20.0),
                      BigElevatedButton(
                        text: 'Logowanie',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // TODO: Logowanie przez email i haslo, potem nawigacja do home screen >>> BLOC AUTORYZACJI
                            debugPrint(
                                'email and password validated successfully! >>> zaloguj i nawiguj do home screen');
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PageViewScreen(),
                              ),
                              (route) => false,
                            );
                          } else {
                            debugPrint('ERROR validating email and password!');
                          }
                        },
                      ),
                      const SizedBox(height: 10.0),
                      const ForgotPasswordButton(),
                      const SizedBox(height: 14.0),
                      orSignUpWithGoogleText(context),
                      const SizedBox(height: 18.0),
                      const GoogleAuthButton(),
                      const SizedBox(height: 6.0),
                      doesNotHaveAnAccountText(context),
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
