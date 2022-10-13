import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          MyTextField(
            myController: emailController,
            fieldName: 'Email',
            myIcon: FontAwesomeIcons.solidEnvelope,
            validator: Validators.validateEmail,
          ),
          // Password Form
          PasswordTextField(
            passwordController: passwordController,
            validator: Validators.validatePasswordCreateAccount,
          ),
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
