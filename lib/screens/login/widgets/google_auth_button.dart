import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account_google/create_account_google_screen.dart';
import 'package:moje_miasto/theme.dart';

class GoogleAuthButton extends StatelessWidget {
  final bool isWide;

  const GoogleAuthButton({
    Key? key,
    this.isWide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      // TODO: nawiguj do ekranu rejestracji / logowania przez google
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CreateAccountGoogleScreen(),
        ),
      ), //debugPrint('Continue with google'),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          // padding: const EdgeInsets.all(1.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: AppTheme.kDividerColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: isWide ? 100.0 : null,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ),
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/app/google_icon.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
