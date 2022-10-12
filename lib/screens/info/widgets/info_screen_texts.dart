import 'package:flutter/material.dart';

Text aboutUsText(BuildContext context) {
  return Text(
    'O NAS',
    style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontFamily: 'Montserrat',
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w600,
          fontSize: 22.0,
        ),
  );
}
