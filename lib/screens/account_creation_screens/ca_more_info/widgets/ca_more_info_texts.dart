import 'package:flutter/material.dart';

Text tellUsMoreAbYourselfText(BuildContext context) {
  return Text(
    'Powiedz nam coś więcej o sobie 😀',
    style: Theme.of(context).textTheme.bodyText1!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
  );
}

Text almostDoneText(BuildContext context) {
  return Text(
    '👀 już prawie...'.toUpperCase(),
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 36.0,
    ),
  );
}

Text bottomText(BuildContext context) {
  return Text(
    'Zależnie od wybranych opcji funkcje aplikacji będą się różnić',
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
      fontWeight: FontWeight.bold,
      fontSize: 9.0,
    ),
  );
}
