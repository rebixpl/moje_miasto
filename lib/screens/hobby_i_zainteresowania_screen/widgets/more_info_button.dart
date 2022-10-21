import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class MoreInfoButton extends StatelessWidget {
  const MoreInfoButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

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
        child: _buttonText(),
      ),
    );
  }

  Text _buttonText() {
    return Text(
      'więcej informacji'.allInCaps,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12.0,
      ),
    );
  }
}
