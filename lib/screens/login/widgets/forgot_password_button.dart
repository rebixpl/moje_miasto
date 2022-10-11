import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/forgot_password_screen.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // TODO: nawiguj do ekranu zapomnialem haslo forgot password
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: ((context) => ForgotPasswordScreen())),
      ),
      child: Text(
        'Zapomniałeś hasła?',
        style: TextStyle(
          color: const Color(0xFF211A4C).withOpacity(0.75),
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
