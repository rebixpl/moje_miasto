import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/ca_more_info_texts.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/city_picker.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/theme.dart';

class CAMoreInfoScreen extends StatelessWidget {
  CAMoreInfoScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _cityNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0),
                      almostDoneText(context),
                      const SizedBox(height: 20.0),
                      const FullWidthDivider(),
                      const SizedBox(height: 20.0),
                      tellUsMoreAbYourselfText(context),
                      const SizedBox(height: 30.0),
                      CityPicker(
                        cityNameController: _cityNameController,
                        formKey: _formKey,
                      ),
                      const SizedBox(height: 30.0),
                      BigElevatedButton(
                        text: 'Kontynuuj',
                        onTap: () {
                          // TODO: Validate user selection and navigate to Home Screen
                        },
                      ),
                      const SizedBox(height: 30.0),
                      const SizedBox(height: 20.0),
                      bottomText(context),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
