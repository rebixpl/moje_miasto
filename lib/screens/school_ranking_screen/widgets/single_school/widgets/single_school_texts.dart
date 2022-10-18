import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text votesCountText(int count) {
  return Text(
    count.toString().allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.bold,
    ),
  );
}

Text schoolNameText(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 13.0,
    ),
  );
}

Text rankingPlacementText(int placement) {
  return Text(
    'miejsce $placement'.allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.bold,
      fontSize: 12.0,
    ),
  );
}

Text votesText() {
  return Text(
    'głosy'.allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.75),
      fontWeight: FontWeight.bold,
    ),
  );
}