import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppTheme.kAccentColor,
      key: const Key('homePage_logout_iconButton'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      onPressed: onTap,
      child: const Text(
        'Wyloguj się',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
