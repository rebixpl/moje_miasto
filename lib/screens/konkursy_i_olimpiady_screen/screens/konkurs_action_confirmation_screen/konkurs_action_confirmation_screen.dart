import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_action_confirmation_screen/widgets/confirmation_screen_texts.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/background_cup_image.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_confirmation_screen/widgets/add_school_screen_texts.dart';
import 'package:moje_miasto/theme.dart';

class KonkursActionConfirmationScreen extends StatelessWidget {
  const KonkursActionConfirmationScreen({
    super.key,
    required this.title,
    required this.description,
  });

  final String title, description;

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
                  GoBackButton(onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  }),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  titleText(context, title),
                  const SizedBox(height: 40.0),
                  const BackgroundCupImage(),
                  const SizedBox(height: 40.0),
                  const FullWidthDivider(),
                  const SizedBox(height: 40.0),
                  requestHasBeenSentText(context),
                  const SizedBox(height: 20.0),
                  requestSentDescriptionText(
                    context,
                    text: description,
                  ),
                  const SizedBox(height: 40.0),
                  BigElevatedButton(
                    text: 'Powrót',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const Spacer(),
              const SizedBox(height: AppTheme.kBottomNavbarHeight),
            ],
          ),
        ),
      ),
    );
  }
}
