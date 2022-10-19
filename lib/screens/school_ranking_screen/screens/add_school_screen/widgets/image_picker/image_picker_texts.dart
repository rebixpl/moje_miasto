import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text selectImageText(BuildContext context) {
  return Text(
    'Wybierz zdjęcie w tle'.allInCaps,
    style: TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
    ),
  );
}
