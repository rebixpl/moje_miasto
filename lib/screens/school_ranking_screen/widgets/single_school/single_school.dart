import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_photo.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/widgets/photo_ui_changer_debug.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/single_school_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/vote_button.dart';
import 'package:moje_miasto/theme.dart';

class SingleSchool extends StatelessWidget {
  const SingleSchool({
    Key? key,
    required this.schoolType,
  }) : super(key: key);

  final String schoolType;

  @override
  Widget build(BuildContext context) {
    // this is temporary only to see changes while im making the ui layer, later the data will be pulled from the firebase
    final String photoUrl = debugPhotoChanger(schoolType);

    return Padding(
      padding: const EdgeInsets.only(
        top: AppTheme.kDefaultPadding / 2,
        left: AppTheme.kDefaultPadding / 1.5,
        right: AppTheme.kDefaultPadding / 1.5,
      ),
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
              Expanded(
                flex: 4,
                child: PhotoContainer(
                  photoUrl: photoUrl,
                ),
              ),
              const SizedBox(width: 12.0),
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
                        child: Center(
                          child: schoolNameText(
                            'Prywatna Szko??a Podstawowa im. Kr??lowej Jadwigi Lublin',
                            maxLines: 3,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Card(
                              color: const Color(0xff6A6493),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    votesText(),
                                    votesCountText(211),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 6.0),
                          const Expanded(
                            child: VoteButton(),
                          ),
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
