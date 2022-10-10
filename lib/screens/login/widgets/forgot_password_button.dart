import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => debugPrint("navigate to forgot password screen"),
      child: Text(
        "Zapomniałeś hasła?",
        style: TextStyle(
          color: const Color(0xFF211A4C).withOpacity(0.75),
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
