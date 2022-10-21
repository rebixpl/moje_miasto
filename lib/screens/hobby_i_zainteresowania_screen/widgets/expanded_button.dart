import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        onPressed: onPressed,
        color: AppTheme.kAccentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: _buttonText(text),
      ),
    );
  }

  Text _buttonText(String text) {
    return Text(
      text.allInCaps,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12.0,
      ),
    );
  }
}
