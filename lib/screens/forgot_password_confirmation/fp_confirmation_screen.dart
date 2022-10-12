import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/forgot_password_confirmation/widgets/checkmark_success_img.dart';
import 'package:moje_miasto/screens/forgot_password_confirmation/widgets/fpc_screen_texts.dart';
import 'package:moje_miasto/screens/login/login_screen.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/theme.dart';

class FPConfirmationScreen extends StatelessWidget {
  const FPConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // TODO: Powrót do ekranu logowania i usunięcie historii nawigacji
                  GoBackButton(
                    clearNavHistory: true,
                    widgetToNavAfterClear: LoginScreen(),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  passwordResetText(context),
                  const SizedBox(height: 40.0),
                  checkmarkSuccessImg(),
                  const SizedBox(height: 40.0),
                  const FullWidthDivider(),
                  const SizedBox(height: 40.0),
                  emailHasBeenSentText(context),
                  const SizedBox(height: 20.0),
                  emailSentDescriptionText(context),
                  const SizedBox(height: 40.0),
                  BigElevatedButton(
                    text: 'Logowanie',
                    onTap: () {
                      // TODO: Powrot do ekranu logowania, bez mozliwosci powrotu
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
