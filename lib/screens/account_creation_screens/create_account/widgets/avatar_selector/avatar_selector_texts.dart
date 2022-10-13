import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text selectAvatarText(BuildContext context) {
  return Text(
    'wybierz awatar'.titleCase,
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
    ),
  );
}
