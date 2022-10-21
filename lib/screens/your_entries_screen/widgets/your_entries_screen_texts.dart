import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

Expanded appBarTitleText(
  String text, {
  double fontSize = 26.0,
  int maxLines = 1,
  TextAlign textAlign = TextAlign.center,
}) {
  return Expanded(
    child: Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        color: AppTheme.kAboutTextColor,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    ),
  );
}

Text subTitleText(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: AppTheme.kAboutTextColor,
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
    ),
  );
}
