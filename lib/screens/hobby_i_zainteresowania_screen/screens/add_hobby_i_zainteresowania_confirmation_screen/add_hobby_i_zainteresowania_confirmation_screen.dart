import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/add_hobby_i_zainteresowania_screen/widgets/hobby_i_zgloszenie_img.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_confirmation_screen/widgets/confirmation_texts.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_confirmation_screen/widgets/add_school_screen_texts.dart';
import 'package:moje_miasto/theme.dart';

class AddHobbyIZainteresowaniaConfirmationScreen extends StatelessWidget {
  const AddHobbyIZainteresowaniaConfirmationScreen({super.key});

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
                  dodajOgloszenieText(context),
                  const SizedBox(height: 40.0),
                  const HobbyIZgloszenieImg(),
                  const SizedBox(height: 40.0),
                  const FullWidthDivider(),
                  const SizedBox(height: 40.0),
                  requestHasBeenSentText(context),
                  const SizedBox(height: 20.0),
                  requestSentDescriptionText(context),
                  const SizedBox(height: 40.0),
                  BigElevatedButton(
                      text: 'Powrót',
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      }),
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
