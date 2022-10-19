import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/ca_more_info_screen.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/cubit/sign_up_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatar_selector.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/cubits/avatar_selector_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/create_account_form.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/create_account_texts.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/google_auth_btn_centred.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/theme.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AvatarSelectorCubit(),
        ),
        BlocProvider(
          create: (_) => SignUpCubit(context.read<AuthenticationRepository>()),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
            child: Column(
              children: [
                BlocListener<SignUpCubit, SignUpState>(
                  listener: (context, state) {
                    if (state.status.isSubmissionSuccess) {
                      Navigator.of(context).pop();
                    } else if (state.status.isSubmissionFailure) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text(
                              state.errorMessage ?? 'Sign Up Failure',
                            ),
                          ),
                        );
                    }
                  },
                  child: Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(height: 20.0),
                          createAccountText(context),
                          const SizedBox(height: 20.0),
                          const FullWidthDivider(),
                          const SizedBox(height: 20.0),
                          tellUsMoreText(context),
                          const SizedBox(height: 20.0),
                          CreateAccountForm(
                            formKey: _formKey,
                            emailController: _emailController,
                            passwordController: _passwordController,
                            usernameController: _usernameController,
                          ),
                          const SizedBox(height: 20.0),
                          const SelectAvatar(),
                          const SizedBox(height: 40.0),
                          _SignUpButton(formKey: _formKey),
                          const SizedBox(height: 30.0),
                          const GoogleAuthBtnCentred(),
                          const SizedBox(height: 20.0),
                          bottomTosTexts(context),
                          const SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : BigElevatedButton(
                key: const Key('signUpForm_continue_raisedButton'),
                text: 'Kontynuuj',
                onTap: () {
                  if (state.status.isValidated) {
                    context.read<SignUpCubit>().signUpFormSubmitted();
                  }
                },
                // onTap: () {
                //   // TODO: also validate avatar selector, or create a cubit with default first avatar
                //   if (_formKey.currentState!.validate()) {
                //     // TODO: navigate to CA Additional Informations Screen
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => CAMoreInfoScreen(),
                //       ),
                //     );
                //     debugPrint(
                //         'validation successfull, navigate to CA Additional Informations Screen');
                //   } else {
                //     debugPrint('ERROR validating create account!');
                //   }
                // },
              );
      },
    );
  }
}
