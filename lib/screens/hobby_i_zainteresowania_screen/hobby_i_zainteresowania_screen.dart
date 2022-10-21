import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/add_hobby_i_zainteresowania_screen/add_hobby_i_zainteresowania_screen.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/widgets/single_entry.dart';
import 'package:moje_miasto/screens/your_entries_screen/widgets/your_entries_screen_texts.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

import 'package:moje_miasto/theme.dart';

class HobbyIZainteresowaniaScreen extends StatelessWidget {
  const HobbyIZainteresowaniaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            top: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBarTitleText(
                'hobby & zainteresowania'.allInCaps,
                textAlign: TextAlign.start,
                maxLines: 2,
              ),
              IconButton(
                splashRadius: 22.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddHobbyIZainteresowaniaScreen(),
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.squarePlus,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100.0,
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
                    const SizedBox(height: 20.0),
                    ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => SingleEntry(
                        buttonOnTap: () {},
                        buttonText: 'więcej informacji',
                      ),
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 20.0),
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
