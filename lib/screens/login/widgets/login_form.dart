import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

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
            validator:
                Validators.validateTitleQuiz, // TODO: create custom validator
          ),
          // Password Form
          PasswordTextField(passwordController: passwordController),
          // Img Form
        ],
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController passwordController;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      myController: widget.passwordController,
      fieldName: 'Hasło',
      myIcon: isHidden ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
      validator:
          Validators.validateDescriptionQuiz, // TODO: create cursom validator
      obscureText: isHidden,
      isSuffixButtonActive: true,
      suffixIconPressed: () {
        setState(() {
          isHidden = !isHidden;
        });
      },
    );
  }
}
