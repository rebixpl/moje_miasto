import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text competitionNameText(
  BuildContext context,
  String text,
) {
  return Text(
    text.allInCaps,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
  );
}
