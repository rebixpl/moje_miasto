import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/country_picker/widgets/country_picker_textfield.dart';

class CountryPickerForm extends StatelessWidget {
  const CountryPickerForm({
    super.key,
    required this.formKey,
    required this.cityNameController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController cityNameController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // City Name Textfield
          CountryPickerTextField(
            myController: cityNameController,
            fieldName: 'Wyszukaj swoje miasto...',
            myIcon: FontAwesomeIcons.magnifyingGlass,
          ),
        ],
      ),
    );
  }
}
