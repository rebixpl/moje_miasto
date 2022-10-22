import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text titleText(
  BuildContext context,
  String text,
) {
  return Text(
    text.allInCaps,
    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
  );
}
