import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_photo.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/single_school_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/vote_button.dart';
import 'package:moje_miasto/theme.dart';

class SingleSchool extends StatelessWidget {
  const SingleSchool({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppTheme.kDefaultPadding / 2,
        left: AppTheme.kDefaultPadding / 2,
        right: AppTheme.kDefaultPadding / 2,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
        color: const Color(0xff535279),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              const Expanded(
                flex: 4,
                child: SchoolPhoto(
                  photoUrl:
                      'images/screens/ca_more_info/account_type_selector/maly_przedsiebiorca.jpeg',
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      rankingPlacementText(1),
                      Expanded(
                        child: schoolNameText(
                          'Prywatna Szkoła Podstawowa im. Królowej Jadwigi Lublin',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            color: const Color(0xff6A6493),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  votesText(),
                                  const SizedBox(width: 4.0),
                                  votesCountText(211),
                                ],
                              ),
                            ),
                          ),
                          const VoteButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
