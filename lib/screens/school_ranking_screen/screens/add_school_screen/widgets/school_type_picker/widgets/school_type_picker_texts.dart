import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text schoolTypeText(BuildContext context) {
  return Text(
    'rodzaj szkoły'.allInCaps,
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    ),
    textAlign: TextAlign.center,
  );
}
