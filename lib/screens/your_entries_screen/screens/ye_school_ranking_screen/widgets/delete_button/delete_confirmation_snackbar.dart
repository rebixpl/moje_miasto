import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_school_ranking_screen/widgets/delete_button/snackbar_button.dart';

void showDeleteConfirmationSnackbar(BuildContext context,
    {required VoidCallback onYesTap}) {
  final snackBar = SnackBar(
    duration: const Duration(days: 1),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Czy napewno chcesz usunąć ten wpis?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // tak button
            SnackbarButton(
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                onYesTap();
              },
            ),
            // anuluj button
            SnackbarButton(
              buttonTypeYesOrNo: false,
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
            ),
          ],
        ),
      ],
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: const Color(0xff6A6493),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
