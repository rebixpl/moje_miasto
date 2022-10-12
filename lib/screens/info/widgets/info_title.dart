import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class InfoTitle extends StatelessWidget {
  final String text;

  const InfoTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.titleCase,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontFamily: 'Montserrat',
        color: AppTheme.kAboutTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      ),
    );
  }
}
