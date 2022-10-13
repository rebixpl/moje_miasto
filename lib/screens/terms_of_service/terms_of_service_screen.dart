import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/info/widgets/background_img.dart';
import 'package:moje_miasto/screens/info/widgets/info_screen_texts.dart';
import 'package:moje_miasto/screens/info/widgets/info_text.dart';
import 'package:moje_miasto/screens/info/widgets/info_title.dart';
import 'package:moje_miasto/screens/info/widgets/person_card.dart';
import 'package:moje_miasto/screens/login/widgets/logo.dart';
import 'package:moje_miasto/theme.dart';

class TosScreen extends StatelessWidget {
  const TosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: const [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GoBackButton(),
            ),
            Expanded(
              child: Text(
                'Zasady & Warunki Użytkowania',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: AppTheme.kAboutTextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Stack(
          //   children: [
          //     const BackgroundImg(),
          //     SafeArea(
          //       child: Padding(
          //         padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
          //         child: Column(
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: const [
          //                 GoBackButton(),
          //               ],
          //             ),
          //             const SizedBox(height: 30.0),
          //             const Logo(),
          //             const SizedBox(height: 20.0),
          //             aboutUsText(context),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
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
                    const SizedBox(height: 30.0),
                    const InfoTitle(
                      text: 'o projekcie moje miasto',
                    ),
                    const SizedBox(height: 20.0),
                    const InfoText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti faucibus turpis non sem nec ullamcorper pharetra, non feugiat. Maecenas aliquam dictum fames natoque aenean ut porttitor a. Lobortis nunc risus lobortis ullamcorper dolor interdum dis. Lorem nam in eu mus donec id nunc etiam.',
                    ),
                    const SizedBox(height: 30.0),
                    const InfoTitle(
                      text: 'o twórcach aplikacji',
                    ),
                    const SizedBox(height: 20.0),
                    const InfoText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti faucibus turpis non sem nec ullamcorper pharetra, non feugiat. Maecenas aliquam.',
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      children: const [
                        Expanded(
                          child: PersonCard(
                            imgPath: 'images/screens/info/krystian.jpg',
                            name: 'Krystian Gułaś',
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: PersonCard(
                            imgPath: 'images/screens/info/fac.jpeg',
                            name: 'Jan Fac',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    const InfoTitle(
                      text: 'o twórcach aplikacji',
                    ),
                    const SizedBox(height: 20.0),
                    const InfoText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti faucibus turpis non sem nec ullamcorper pharetra, non feugiat. Maecenas aliquam.',
                    ),
                    const SizedBox(height: 30.0),
                    const InfoTitle(
                      text: 'o twórcach aplikacji',
                    ),
                    const SizedBox(height: 20.0),
                    const InfoText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti faucibus turpis non sem nec ullamcorper pharetra, non feugiat. Maecenas aliquam.',
                    ),
                    const SizedBox(height: 30.0),
                    const InfoTitle(
                      text: 'o twórcach aplikacji',
                    ),
                    const SizedBox(height: 20.0),
                    const InfoText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti faucibus turpis non sem nec ullamcorper pharetra, non feugiat. Maecenas aliquam.',
                    ),
                    const SizedBox(height: 30.0),
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
