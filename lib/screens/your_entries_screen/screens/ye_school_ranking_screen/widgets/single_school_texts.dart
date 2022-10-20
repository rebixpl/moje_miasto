import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text schoolTypeText(String schoolType) {
  return Text(
    schoolType.allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.bold,
      fontSize: 12.0,
    ),
  );
}
