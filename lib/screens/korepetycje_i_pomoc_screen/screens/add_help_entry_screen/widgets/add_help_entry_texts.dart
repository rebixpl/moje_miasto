import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Expanded appBarTitleText(
  BuildContext context,
  String text, {
  double fontSize = 30.0,
}) {
  return Expanded(
    child: Text(
      text.allInCaps,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    ),
  );
}
