import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/thin_divider.dart';

Row orSignUpWithGoogleText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const ThinDivider(),
      const SizedBox(width: 6.0),
      Text(
        'Lub zaloguj się przez',
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w500,
          fontSize: 11.0,
        ),
      ),
      const SizedBox(width: 6.0),
      const ThinDivider(),
    ],
  );
}

Row doesNotHaveAnAccountText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Nie masz jeszcze konta?',
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
          fontSize: 14.5,
        ),
      ),
      TextButton(
        onPressed: () =>
            // TODO: Nawiguj do ekranu rejestracji przez email >>> BLOC AUTORYZACJI
            debugPrint('nawiguj do Rejestracja przez Email'),
        child: Text(
          'Zarejestruj się',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.75),
            fontWeight: FontWeight.bold,
            fontSize: 14.5,
          ),
        ),
      ),
    ],
  );
}

Text welcomeBackText(BuildContext context) {
  return Text(
    'Witaj Spowrotem 👋',
    style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontFamily: 'Montserrat',
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
  );
}
