import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/info/widgets/background_img.dart';
import 'package:moje_miasto/screens/info/widgets/info_screen_texts.dart';
import 'package:moje_miasto/screens/login/widgets/logo.dart';
import 'package:moje_miasto/theme.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const BackgroundImg(),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          GoBackButton(),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      const Logo(),
                      const SizedBox(height: 20.0),
                      aboutUsText(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'o projekcie moje miasto'.toTitleCase(),
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      color: AppTheme.kAboutTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
