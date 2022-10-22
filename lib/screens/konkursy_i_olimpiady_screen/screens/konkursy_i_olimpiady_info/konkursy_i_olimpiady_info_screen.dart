import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/hobby_i_zaint_more_info_screen/widgets/h_i_z_sliver_appbar.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/hobby_i_zaint_more_info_screen/widgets/info_screen_texts.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkursy_i_olimpiady_info/widgets/card_info_container.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkursy_i_olimpiady_info/widgets/info_screen_texts.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkursy_i_olimpiady_info/widgets/wez_udzial_button.dart';
import 'package:moje_miasto/theme.dart';

class KonkursyIOlimpiadyInfoScreen extends StatelessWidget {
  const KonkursyIOlimpiadyInfoScreen({super.key});

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
              title: 'konkurs',
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
                      titleText(
                        'XVII olimpiada informatyczna juniorów',
                      ),
                      const SizedBox(height: 10.0),
                      const FullWidthDivider(),
                      const SizedBox(height: 10.0),
                      descriptionText(
                        'Weź udział w XVII Olimpiadzie Informatycznej Juniorów (dla szkół podstawowych). Zapraszamy uczniów klas 1-8 do udziału w XVII Olimpiadzie Informatycznej Juniorów. Głównym celem konkursu jest rozwój i kształtowanie myślenia analitycznego, algorytmicznego i komputacyjnego oraz popularyzacja umiejętnego posługiwania się technologią informacyjną i komunikacyjną wśród uczniów na wszystkich etapach edukacyjnych. ',
                      ),
                      const SizedBox(height: 10.0),
                      const FullWidthDivider(),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          CardInfoContainer(
                            cardTitle: 'harmonogram',
                            cardChildren: [
                              cardDescriptionText('8 listopada 2022'),
                              const SizedBox(height: 10.0),
                              cardDescriptionText('10:00 - 11:00'),
                            ],
                          ),
                          const SizedBox(width: 20.0),
                          CardInfoContainer(
                            cardTitle: 'organizator',
                            cardChildren: [
                              cardDescriptionText(
                                  'Szkoła podstawowa im św. Roberta Muska W Lublinie'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      const FullWidthDivider(),
                      const SizedBox(height: 20.0),
                      WezUdzialButton(
                        onTap: () {},
                      ),
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
