import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text addSchoolText(BuildContext context) {
  return Text(
    'dodaj szkołę'.allInCaps,
    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
  );
}

SizedBox requestSentDescriptionText(BuildContext context) {
  return SizedBox(
    width: 340.0,
    child: Text(
      'Teraz administrator sprawdzi twoje zgłoszenie i jeśli jest poprawne zaakceptuje je',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
    ),
  );
}

Text requestHasBeenSentText(BuildContext context) {
  return Text(
    'Zgłoszenie zostało wysłane!',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 22.0,
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
    ),
  );
}
