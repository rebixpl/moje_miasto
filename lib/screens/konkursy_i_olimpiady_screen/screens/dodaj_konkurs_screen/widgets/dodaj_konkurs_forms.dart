import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';

class DodajKonkursForms extends StatelessWidget {
  const DodajKonkursForms({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController titleController,
    required TextEditingController descriptionController,
    required TextEditingController schoolNameController,
  })  : _formKey = formKey,
        _titleController = titleController,
        _descriptionController = descriptionController,
        _schoolNameController = schoolNameController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _titleController;
  final TextEditingController _descriptionController;
  final TextEditingController _schoolNameController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyTextField(
            myController: _titleController,
            onChanged: (text) {},
            fieldName: 'Tytuł',
            myIcon: FontAwesomeIcons.pen,
            validator: Validators.validateTitleText,
          ),
          MyTextField(
            myController: _descriptionController,
            onChanged: (text) {},
            fieldName: 'Opis',
            myIcon: FontAwesomeIcons.pen,
            validator: Validators.validateSchoolName,
          ),
          MyTextField(
            myController: _schoolNameController,
            onChanged: (text) {},
            fieldName: 'Organizator / Pełna nazwa szkoły',
            myIcon: FontAwesomeIcons.school,
            validator: Validators.validateSchoolName,
          ),
        ],
      ),
    );
  }
}
