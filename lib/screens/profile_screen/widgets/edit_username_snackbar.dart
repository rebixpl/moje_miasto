import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';

void showEditUsernameSnackbar({
  required BuildContext context,
  required TextEditingController usernameController,
}) {
  final snackBar = SnackBar(
    duration: const Duration(days: 1),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextField(
          myController: usernameController,
          onChanged: (username) {},
          fieldName: 'Nazwa Użytkownika',
          myIcon: FontAwesomeIcons.pen,
          validator: Validators.validateUsername,
        ),
        const SizedBox(height: 10.0),
        BigElevatedButton(
          text: 'Zapisz zmiany',
          onTap: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ],
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: Colors.white,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
