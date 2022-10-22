import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/widgets/expanded_button.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/widgets/single_entry_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_photo.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/single_school_texts.dart';

class SingleEntry extends StatelessWidget {
  const SingleEntry({
    Key? key,
    required this.buttonText,
    required this.buttonOnTap,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback buttonOnTap;

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: PhotoContainer(
                  height: 130.0,
                  photoUrl:
                      'images/screens/home_screen/features_carousel/rankingi_i_oceny.jpeg',
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                flex: 2,
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
                                      'Szukam osób do projektu strony internetowej dla Muzeum Cebularza w Lublinie. Mam już 2 osoby i...',
                                      maxLines: 3,
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        ExpandedButton(
                          onPressed: buttonOnTap,
                          text: buttonText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
