import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text dodajOgloszenieText(BuildContext context) {
  return Text(
    'dodaj ogłoszenie'.allInCaps,
    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
          fontSize: 26.0,
        ),
  );
}
