import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
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
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 30.0,
        ),
        child: logOutText(),
      ),
    );
  }

  Text logOutText() {
    return Text(
      'Wyloguj Się'.allInCaps,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
        color: Colors.white,
      ),
    );
  }
}
