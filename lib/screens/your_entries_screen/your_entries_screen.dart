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

class YourEntriesScreen extends StatelessWidget {
  const YourEntriesScreen({super.key});

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
                    NavScreensEnum.profileScreen.index,
                  );
                },
              ),
            ),
            appBarTitleText('twoje wpisy'.allInCaps),
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
                    subTitleText(
                        'Lista wszystkich zgłoszeń / wpisów, które zostały przez ciebie dodane od aplikacji'),
                    const SizedBox(height: 20.0),
                    SectionButton(
                      label: 'ranking szkół',
                      icon: FontAwesomeIcons.school,
                      onTap: () {
                        pageViewNavCubit.onTap(
                          NavScreensEnum.yeSchoolRankingScreen.index,
                        );
                      },
                    ),
                    const SizedBox(height: 20.0),
                    SectionButton(
                      label: 'korepetycje & pomoc',
                      icon: FontAwesomeIcons.handshakeAngle,
                      onTap: () {},
                    ),
                    const SizedBox(height: 20.0),
                    SectionButton(
                      label: 'konkursy & olimpiady',
                      icon: FontAwesomeIcons.trophy,
                      onTap: () {},
                    ),
                    const SizedBox(height: 20.0),
                    SectionButton(
                      label: 'hobby & zainteresowania',
                      icon: FontAwesomeIcons.laptopCode,
                      onTap: () {},
                    ),
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
