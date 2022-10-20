import 'package:flutter/material.dart';

SelectableText userIdText(BuildContext context, String userId) {
  return SelectableText(
    'ID Użytkownika: $userId',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 10.0,
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
    ),
    textAlign: TextAlign.center,
  );
}

Text emailText(BuildContext context, String email) {
  return Text(
    email.toString(),
    style: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18.0,
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
    ),
    textAlign: TextAlign.center,
  );
}

Text usernameText(BuildContext context, String username) {
  return Text(
    username,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      color: Theme.of(context).colorScheme.secondary,
    ),
  );
}
