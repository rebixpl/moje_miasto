import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';

class WezUdzialForms extends StatelessWidget {
  const WezUdzialForms({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController schoolNameController,
    required TextEditingController teamNamesController,
    required TextEditingController phoneNumberController,
    required TextEditingController emailController,
  })  : _formKey = formKey,
        _schoolNameController = schoolNameController,
        _teamNamesController = teamNamesController,
        _phoneNumberController = phoneNumberController,
        _emailController = emailController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _schoolNameController;
  final TextEditingController _teamNamesController;
  final TextEditingController _phoneNumberController;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyTextField(
            myController: _schoolNameController,
            onChanged: (text) {},
            fieldName: 'Pełna nazwa szkoły / szkół',
            myIcon: FontAwesomeIcons.school,
            validator: Validators.validateSchoolName,
          ),
          MyTextField(
            myController: _teamNamesController,
            onChanged: (text) {},
            fieldName: 'Skład drużyny / Twoje Imię i Nazwisko',
            myIcon: FontAwesomeIcons.solidUser,
            validator: Validators.validateTeamNames,
          ),
          MyTextField(
            myController: _phoneNumberController,
            onChanged: (text) {},
            isPhoneNumber: true,
            fieldName: 'Numer telefonu osoby zgłaszającej',
            myIcon: FontAwesomeIcons.mobile,
            validator: Validators.validateMobile,
          ),
          MyTextField(
            myController: _emailController,
            onChanged: (text) {},
            isEmail: true,
            fieldName: 'Adres e-mail do kontaktu',
            myIcon: FontAwesomeIcons.solidEnvelope,
            validator: Validators.validateEmail,
          ),
        ],
      ),
    );
  }
}
