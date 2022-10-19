import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

Expanded addSchoolText(BuildContext context) {
  return Expanded(
    child: Text(
      'dodaj szkołę'.allInCaps,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      ),
    ),
  );
}

Text descriptionAddSchoolText(BuildContext context) {
  return Text(
    'Po wysłaniu twoje zgłoszenie trafi do kolejki i będzie musiało być zaakceptowane przez administrację',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontWeight: FontWeight.bold,
      fontSize: 14.0,
    ),
  );
}
