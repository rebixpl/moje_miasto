import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text czegoPotrzebujeszText(BuildContext context) {
  return Text(
    'Czego potrzebujesz?'.titleCase,
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    ),
    textAlign: TextAlign.center,
  );
}
