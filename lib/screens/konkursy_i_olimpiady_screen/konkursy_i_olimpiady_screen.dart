import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/widgets/single_card.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/cubit/school_type_selector_cubit.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/school_type_selector.dart';
import 'package:moje_miasto/screens/your_entries_screen/widgets/your_entries_screen_texts.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

import 'package:moje_miasto/theme.dart';

class KonkursyIOlimpiadyScreen extends StatelessWidget {
  const KonkursyIOlimpiadyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SchoolTypeSelectorCubit(),
      child: Scaffold(
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                appBarTitleText(
                  'konkursy'.allInCaps,
                  textAlign: TextAlign.start,
                  fontSize: 32.0,
                ),
                IconButton(
                  splashRadius: 22.0,
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => AddHelpEntryScreen(),
                    //   ),
                    // );
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
                      const SizedBox(height: 20.0),
                      const SchoolTypeSelector(),
                      const SizedBox(height: 20.0),
                      BlocBuilder<SchoolTypeSelectorCubit, String>(
                        builder: (context, state) {
                          final SchoolType schoolTypePonadpodstawowe =
                              schoolTypesSelectorList[
                                  SchoolTypesEnum.ponadpodstawowe.index];

                          final SchoolType schoolTypePodstawowe =
                              schoolTypesSelectorList[
                                  SchoolTypesEnum.podstawowe.index];

                          final SchoolType schoolTypeStudia =
                              schoolTypesSelectorList[
                                  SchoolTypesEnum.studia.index];

                          if (state == schoolTypePodstawowe.id) {
                            // SchoolTypesEnum.podstawowe
                            return ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => SingleCard(
                                schoolTypeName: schoolTypePodstawowe.title,
                              ),
                              itemCount: 2,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(height: 20.0),
                            );
                          } else if (state == schoolTypePonadpodstawowe.id) {
                            // SchoolTypesEnum.ponadpodstawowe
                            return ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => SingleCard(
                                schoolTypeName: schoolTypePonadpodstawowe.title,
                              ),
                              itemCount: 3,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(height: 20.0),
                            );
                          } else {
                            // SchoolTypesEnum.studia
                            return ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => SingleCard(
                                schoolTypeName: schoolTypeStudia.title,
                              ),
                              itemCount: 1,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(height: 20.0),
                            );
                          }
                        },
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
      ),
    );
  }
}
