import 'package:flutter/material.dart';

Text createAccountText(BuildContext context) {
  return Text(
    'utwórz konto'.toUpperCase(),
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 36.0,
    ),
  );
}

Text tellUsMoreText(BuildContext context) {
  return Text(
    'Powiedz nam coś o sobie 😀',
    style: Theme.of(context).textTheme.bodyText1!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
  );
}

Row bottomTosTexts(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Po zarejstrowaniu zgadzasz sie na',
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          fontWeight: FontWeight.bold,
          fontSize: 9.0,
        ),
      ),
      TextButton(
        // TODO: Navigate to TOS SCREEN
        onPressed: () => debugPrint('Navigate to TOS Screen'),
        child: Text(
          'Zasady & Warunki Użytkowania',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 9.0,
          ),
        ),
      ),
    ],
  );
}
