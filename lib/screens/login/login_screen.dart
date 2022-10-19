import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:moje_miasto/screens/login/cubit/login_cubit.dart';
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

  static Page<void> page() => MaterialPage<void>(child: LoginScreen());

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(context.read<AuthenticationRepository>()),
      child: Scaffold(
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

                BlocListener<LoginCubit, LoginState>(
                  listener: (context, state) {
                    if (state.status.isSubmissionFailure) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text(
                                state.errorMessage ?? 'Authentication Failure'),
                          ),
                        );
                    }
                  },
                  child: Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: BlocProvider(
                        create: (context) => LoginCubit(
                            context.read<AuthenticationRepository>()),
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
                            _LoginButton(formKey: _formKey),
                            const SizedBox(height: 10.0),
                            const ForgotPasswordButton(),
                            const SizedBox(height: 14.0),
                            orSignUpWithGoogleText(context),
                            const SizedBox(height: 18.0),
                            const _LoginGoogleButton(),
                            const SizedBox(height: 6.0),
                            doesNotHaveAnAccountText(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginGoogleButton extends StatelessWidget {
  const _LoginGoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GoogleAuthButton(
      key: const Key('loginForm_googleLogin_raisedButton'),
      onTap: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : BigElevatedButton(
                key: const Key('loginForm_logowanie_raisedButton'),
                text: 'Logowanie',
                onTap: () {
                  if (state.status.isValidated) {
                    context.read<LoginCubit>().logInWithCredentials();
                  }
                },
                // onTap: () {
                //   if (_formKey.currentState!.validate()) {
                //     // TODO: Logowanie przez email i haslo, potem nawigacja do home screen >>> BLOC AUTORYZACJI
                //     debugPrint(
                //         'email and password validated successfully! >>> zaloguj i nawiguj do home screen');
                //     Navigator.pushAndRemoveUntil(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const PageViewScreen(),
                //       ),
                //       (route) => false,
                //     );
                //   } else {
                //     debugPrint('ERROR validating email and password!');
                //   }
                // },
              );
      },
    );
  }
}
