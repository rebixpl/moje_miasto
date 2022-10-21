import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Text votesCountText(int count) {
  return Text(
    count.toString().allInCaps,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.bold,
      fontSize: 12.0,
    ),
  );
}

Text schoolNameText(String text, {int? maxLines, double? fontSize = 13.0}) {
  return Text(
    text,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
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
      fontSize: 12.0,
    ),
  );
}
