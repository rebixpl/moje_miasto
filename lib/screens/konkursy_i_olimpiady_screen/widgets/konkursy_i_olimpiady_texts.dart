import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text dateText(String text) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.bold,
      fontSize: 12.0,
    ),
  );
}

Text schoolTypeText(String text) {
  return Text(
    text.allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.bold,
      fontSize: 12.0,
    ),
  );
}
