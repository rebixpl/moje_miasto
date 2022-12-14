import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_screen/add_help_entry_screen.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/cubit/help_type_picker_cubit.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/data/help_types.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/help_type_picker.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/widgets/single_entry.dart';
import 'package:moje_miasto/screens/your_entries_screen/widgets/your_entries_screen_texts.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

import 'package:moje_miasto/theme.dart';

class KorepetycjeIPomocScreen extends StatelessWidget {
  const KorepetycjeIPomocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HelpTypePickerCubit(),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBarTitleText(
                  'korepetycje & pomoc 📚'.allInCaps,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                ),
                IconButton(
                  splashRadius: 22.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddHelpEntryScreen(),
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
                      const HelpTypePicker(),
                      const SizedBox(height: 20.0),
                      BlocBuilder<HelpTypePickerCubit, String>(
                        builder: (context, state) {
                          if (state ==
                              helpTypes[HelpTypesEnum.szukamPomocy.index].id) {
                            // HelpTypesEnum.szukamPomocy
                            return ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  const SingleEntry(),
                              itemCount: 5,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(height: 20.0),
                            );
                          } else {
                            // HelpTypesEnum.udzielamPomocy
                            return ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  const SingleEntry(),
                              itemCount: 2,
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
