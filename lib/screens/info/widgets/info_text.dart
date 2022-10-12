import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class InfoText extends StatelessWidget {
  final String text;

  const InfoText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.titleCase,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        fontFamily: 'Montserrat',
        color: AppTheme.kAboutTextColor,
        fontWeight: FontWeight.normal,
        fontSize: 15.0,
      ),
    );
  }
}
