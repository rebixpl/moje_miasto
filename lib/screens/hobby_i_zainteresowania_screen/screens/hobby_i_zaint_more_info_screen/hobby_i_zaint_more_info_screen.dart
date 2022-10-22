import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/hobby_i_zaint_more_info_screen/widgets/h_i_z_sliver_appbar.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/hobby_i_zaint_more_info_screen/widgets/help_info.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/hobby_i_zaint_more_info_screen/widgets/info_screen_texts.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/widgets/single_entry_texts.dart';
import 'package:moje_miasto/theme.dart';

class HobbyIZaintMoreInfoScreen extends StatelessWidget {
  const HobbyIZaintMoreInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffab9cf3),
              Color(0xff282054),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          slivers: [
            const HIZSliverAppBar(
              imageUrl:
                  'images/screens/home_screen/features_carousel/hobby_i_zainteresowania.jpeg',
              title: 'Hobby & Zainteresowania',
            ),
            SliverFixedExtentList(
              itemExtent: 800,
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                addAutomaticKeepAlives: false,
                (context, index) => Padding(
                  padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(avatars[3].bgColor),
                            radius: 14.0,
                            child: Image.asset(
                                'images/screens/create_account/avatar_selector/${avatars[3].id}.png'),
                          ),
                          const SizedBox(width: 10.0),
                          usernameText('Cebullaro_Drapallo'),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const FullWidthDivider(),
                      const SizedBox(height: 10.0),
                      descriptionText(
                        'Szukam osób do projektu strony internetowej dla Muzeum Cebularza w . Mam już 2 osoby i Szukam osób do  strony internetowej dla Muzeum Cebularza w Lublinie. Mam już 2  i Szukam osób  projektu strony  dla Muzeum Cebularza w Lublinie. Mam już 2 osoby i Szukam oób do projektu  internetowej dla Muzeum  w Lublinie. Mam  2 osoby i ',
                      ),
                      const SizedBox(height: 10.0),
                      const FullWidthDivider(),
                      const SizedBox(height: 10.0),
                      const HelpInfo(
                        userEmail: 'cebullaro2@gmail.com',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
