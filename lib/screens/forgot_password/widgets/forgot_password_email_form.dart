import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';

class ForgotPasswordEmailForm extends StatelessWidget {
  const ForgotPasswordEmailForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
  })  : _formKey = formKey,
        _emailController = emailController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyTextField(
            myController: _emailController,
            fieldName: 'Email',
            myIcon: FontAwesomeIcons.solidEnvelope,
            validator: Validators.validateEmail,
          ),
        ],
      ),
    );
  }
}
