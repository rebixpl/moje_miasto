import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/page_view_screen/data/nav_screens_enum.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/screens/profile_screen/widgets/home_screen_personalization_btn/section_button.dart';
import 'package:moje_miasto/screens/your_entries_screen/widgets/your_entries_screen_texts.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class YeKonkursyIOlimpiadyScreen extends StatelessWidget {
  const YeKonkursyIOlimpiadyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageViewNavCubit = context.read<PageViewNavCubit>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GoBackButton(
                onTap: () {
                  pageViewNavCubit.onTap(
                    NavScreensEnum.yourEntriesScreen.index,
                  );
                },
              ),
            ),
            appBarTitleText(
              'konkursy & olimpiady'.allInCaps,
              fontSize: 22.0,
            ),
          ],
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: AppTheme.kDefaultPadding,
                  left: AppTheme.kDefaultPadding,
                  right: AppTheme.kDefaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FullWidthDivider(),
                    const SizedBox(height: 20.0),
                    SectionButton(
                      label: 'Konkursy dodane przez ciebie',
                      icon: FontAwesomeIcons.trophy,
                      fontSize: 13.0,
                      onTap: () {
                        pageViewNavCubit.onTap(
                          NavScreensEnum
                              .yeKonkursyDodanePrzezCiebieScreen.index,
                        );
                      },
                    ),
                    const SizedBox(height: 20.0),
                    SectionButton(
                      label: 'Uczestnicy twoich konkursów',
                      icon: FontAwesomeIcons.userPlus,
                      fontSize: 13.0,
                      onTap: () {
                        pageViewNavCubit.onTap(
                          NavScreensEnum
                              .yeUczestnicyTwoichKonkursowScreen.index,
                        );
                      },
                    ),
                    const SizedBox(height: 20.0),
                    SectionButton(
                      label: 'konkursy w których uczestniczysz',
                      icon: FontAwesomeIcons.trophy,
                      fontSize: 14.0,
                      onTap: () {},
                    ),
                    const SizedBox(height: 20.0),
                    const SizedBox(
                      height: AppTheme.kBottomNavbarHeight + 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
