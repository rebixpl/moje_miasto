import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Expanded appBarTitleText(BuildContext context) {
  return Expanded(
    child: Text(
      'ustawienia'.allInCaps,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      ),
    ),
  );
}

Text personaliseAppForYouText(BuildContext context) {
  return Text(
    'Spersonalizujemy aplikację pod ciebie 🤯',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
  );
}
