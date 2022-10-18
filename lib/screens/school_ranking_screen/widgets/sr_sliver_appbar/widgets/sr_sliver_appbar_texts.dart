import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text bestSchoolsText() {
  return Text(
    'najlepsze szkoły'.allInCaps,
    style: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text placeText(int place) {
  return Text(
    place.toString(),
    style: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 60.0,
    ),
  );
}
