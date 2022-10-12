import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
    required this.passwordController,
    required this.validator,
  }) : super(key: key);

  final TextEditingController passwordController;
  final String? Function(String?) validator;

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
      myIcon:
          isHidden ? FontAwesomeIcons.solidEye : FontAwesomeIcons.solidEyeSlash,
      validator: widget.validator,
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
