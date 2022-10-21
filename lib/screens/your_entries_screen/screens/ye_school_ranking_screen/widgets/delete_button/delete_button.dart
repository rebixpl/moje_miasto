import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_school_ranking_screen/widgets/delete_button/delete_confirmation_snackbar.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDeleteConfirmationSnackbar(context);
      },
      color: AppTheme.kAccentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: _buttonText(),
    );
  }

  Text _buttonText() {
    return Text(
      'usuń'.allInCaps,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12.0,
      ),
    );
  }
}
