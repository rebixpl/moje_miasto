import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text titleText(String text) {
  return Text(
    text.allInCaps,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text cardTitleText(String text) {
  return Text(
    text.allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.75),
      fontWeight: FontWeight.bold,
      fontSize: 14.0,
    ),
  );
}

Text cardDescriptionText(String text) {
  return Text(
    text.allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.bold,
      fontSize: 14.0,
    ),
    overflow: TextOverflow.ellipsis,
    maxLines: 6,
  );
}
