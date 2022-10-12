import 'package:flutter/material.dart';

Text resetPasswordText(BuildContext context) {
  return Text(
    'Reset Hasła',
    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
        ),
  );
}

SizedBox forgotPasswordDescriptionText(BuildContext context) {
  return SizedBox(
    width: 340.0,
    child: Text(
      'Wpisz adres email, który został użyty do utworzenia konta. Na ten adres zostaną wysłane instrukcje dotyczące resetu hasła.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Text forgotPasswordText(BuildContext context) {
  return Text(
    'Zapomniałeś Hasło?',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 28.0,
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
    ),
  );
}
