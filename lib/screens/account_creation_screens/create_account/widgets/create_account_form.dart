import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/cubit/sign_up_cubit.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/password_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.usernameController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController,
      passwordController,
      usernameController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // Email Form
          _EmailInput(emailController: emailController),
          // Password Form
          _PasswordInput(passwordController: passwordController),
          // Username Form
          MyTextField(
            myController: usernameController,
            fieldName: 'Nazwa Użytkownika',
            myIcon: FontAwesomeIcons.solidCircleUser,
            validator: Validators.validateUsername,
          ),
        ],
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return PasswordTextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<SignUpCubit>().passwordChanged(password),
          passwordController: passwordController,
          validator: Validators.validatePasswordCreateAccount,
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return MyTextField(
          key: const Key('signUpForm_emailInput_textField'),
          myController: emailController,
          onChanged: (email) => context.read<SignUpCubit>().emailChanged(email),
          fieldName: 'Email',
          myIcon: FontAwesomeIcons.solidEnvelope,
          isEmail: true,
          validator: Validators.validateEmail,
        );
      },
    );
  }
}
