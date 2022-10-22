import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text osobaZglaszajacaText(BuildContext context) {
  return Text(
    'osoba zgłaszająca'.titleCase,
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    ),
    textAlign: TextAlign.center,
  );
}
