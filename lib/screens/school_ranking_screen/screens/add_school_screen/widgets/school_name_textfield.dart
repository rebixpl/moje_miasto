import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';

class SchoolNameTextField extends StatelessWidget {
  const SchoolNameTextField({
    Key? key,
    required TextEditingController schoolNameController,
  })  : _schoolNameController = schoolNameController,
        super(key: key);

  final TextEditingController _schoolNameController;

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      myController: _schoolNameController,
      onChanged: (schoolName) {},
      fieldName: 'Nazwa Szkoły',
      myIcon: FontAwesomeIcons.pen,
      validator: Validators.validateSchoolName,
    );
  }
}
