import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text accountTypeSelectorTitleText(BuildContext context) {
  return Text(
    'jestem...'.titleCase,
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
    ),
  );
}

Text contextText(String text, BuildContext context) {
  return Text(
    '- $text',
    style: TextStyle(
      fontSize: 11.0,
      color: Theme.of(context).colorScheme.primary,
    ),
    // maxLines: 2,
  );
}

Text cardTitleText(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.secondary,
      fontSize: 18.0,
    ),
  );
}

Text weWillHelpYouWithText(BuildContext context) {
  return Text(
    'Ułatwimy ci dostęp do m.in.',
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 12.0,
    ),
  );
}
