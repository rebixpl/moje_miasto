import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/cubit/single_entry_card_cubit.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/widgets/arrow_button.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/widgets/single_entry_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/single_school_texts.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class SingleEntry extends StatelessWidget {
  const SingleEntry({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingleEntryCardCubit(),
      child: BlocBuilder<SingleEntryCardCubit, bool>(
        builder: (context, state) {
          final SingleEntryCardCubit singleEntryCardCubit =
              context.read<SingleEntryCardCubit>();

          return SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff6A6493),
                    Color(0xff211A4C),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 3.0,
                    spreadRadius: 0.0,
                    offset: Offset(1.0, 1.0),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(014.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                              const SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Expanded(
                                    child: schoolNameText(
                                      'Poszukuje pomocy przy nauce matematyki klasa 2 liceum, rozdział Funkcja Kwadratowa. 😄👍👍',
                                      maxLines: 3,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ArrowButton(
                              onTap: () => singleEntryCardCubit.toggle(),
                              icon: state
                                  ? FontAwesomeIcons.chevronUp
                                  : FontAwesomeIcons.chevronDown,
                            ),
                          ],
                        ),
                      ],
                    ),
                    state
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10.0),
                              const FullWidthDivider(),
                              const SizedBox(height: 10.0),
                              usernameText('kontakt'.titleCase),
                              const SizedBox(height: 10.0),
                              Row(
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.solidEnvelope,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(width: 10.0),
                                  usernameText(
                                    'cebullaro2@gmail.com',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ],
                              ),
                            ],
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
