import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

void showThankYouSnackbar(BuildContext context) {
  final snackBar = SnackBar(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'dziękujemy!'.allInCaps,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26.0,
            color: Colors.white,
          ),
        ),
        const Text(
          'Głos został oddany!',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
            color: Colors.white,
          ),
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
