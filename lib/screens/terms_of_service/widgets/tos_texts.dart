import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

Expanded appBarTitleText() {
  return const Expanded(
    child: Text(
      'Zasady & Warunki Użytkowania',
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        color: AppTheme.kAboutTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      ),
    ),
  );
}

Center lastUpdateText(BuildContext context) {
  return Center(
    child: Text(
      'Ostatnia Aktualizacja: 13/10/2022 21:05',
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      ),
    ),
  );
}
