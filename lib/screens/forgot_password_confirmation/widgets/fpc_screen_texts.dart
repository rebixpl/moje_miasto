import 'package:flutter/material.dart';

SizedBox emailSentDescriptionText(BuildContext context) {
  return SizedBox(
    width: 340.0,
    child: Text(
      'Prosimy o sprawdzenie skrzynki odbiorczej i kliknięcie w otrzymany link aby zresetować hasło.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Text emailHasBeenSentText(BuildContext context) {
  return Text(
    'Email został wysłany!',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 28.0,
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text passwordResetText(BuildContext context) {
  return Text(
    'Reset Hasła',
    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
        ),
  );
}
