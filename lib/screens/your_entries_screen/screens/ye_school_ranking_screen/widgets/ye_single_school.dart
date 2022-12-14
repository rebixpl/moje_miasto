import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/school_type_picker/data/school_type_picker_data.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_photo.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/single_school_texts.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_school_ranking_screen/widgets/delete_button/delete_button.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_school_ranking_screen/widgets/single_school_texts.dart';

class YeSingleSchool extends StatelessWidget {
  const YeSingleSchool({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 170.0,
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
                flex: 4,
                child: PhotoContainer(
                  photoUrl:
                      'images/screens/ca_more_info/account_type_selector/uczen.jpeg',
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
                      schoolTypeText(schoolTypes[0].title),
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
                            child: DeleteButton(),
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
