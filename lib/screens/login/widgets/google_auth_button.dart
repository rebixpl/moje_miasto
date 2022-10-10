import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      // TODO: nawiguj do ekranu rejestracji / logowania przez google
      onTap: () => debugPrint('Continue with google'),
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
