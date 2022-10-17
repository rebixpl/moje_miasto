import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/cubits/city_picker_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/widgets/city_picker_textfield.dart';

class CityPickerForm extends StatelessWidget {
  const CityPickerForm({
    super.key,
    required this.formKey,
    required this.cityNameController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController cityNameController;

  @override
  Widget build(BuildContext context) {
    CityPickerCubit cityPickerCubit = context.read<CityPickerCubit>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          // City Name Textfield
          CityPickerTextField(
            myController: cityNameController,
            fieldName: 'Wyszukaj swoje miasto...',
            myIcon: FontAwesomeIcons.magnifyingGlass,
            onChanged: (value) {
              cityPickerCubit.filterCities(value);
            },
          ),
        ],
      ),
    );
  }
}
    // );
  // }

