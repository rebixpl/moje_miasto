import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.padding = EdgeInsets.zero,
    this.fontSize = 12.0,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        onPressed: onPressed,
        color: AppTheme.kAccentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: padding,
          child: _buttonText(text, fontSize),
        ),
      ),
    );
  }

  Text _buttonText(String text, double fontSize) {
    return Text(
      text.allInCaps,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
