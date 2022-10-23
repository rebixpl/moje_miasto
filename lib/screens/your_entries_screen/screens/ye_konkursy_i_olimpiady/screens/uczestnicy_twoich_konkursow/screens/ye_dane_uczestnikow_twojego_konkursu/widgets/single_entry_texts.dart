import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text infoTextSE(String text) {
  return Text(
    text.allInCaps,
    style: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 7.0,
    ),
  );
}

Text titleTextSE(String text) {
  return Text(
    text.allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.bold,
      fontSize: 8.0,
    ),
  );
}
