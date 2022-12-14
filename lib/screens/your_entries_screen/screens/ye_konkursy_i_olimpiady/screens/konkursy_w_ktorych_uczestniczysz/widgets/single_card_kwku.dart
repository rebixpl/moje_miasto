import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/widgets/konkursy_i_olimpiady_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_photo.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/single_school_texts.dart';

class SingleCardKWKU extends StatelessWidget {
  const SingleCardKWKU({
    Key? key,
    required this.schoolTypeName,
  }) : super(key: key);

  final String schoolTypeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
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
                    'images/screens/home_screen/features_carousel/konkursy_i_olimpiady.jpeg',
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
                    schoolTypeText(schoolTypeName),
                    Expanded(
                      child: Center(
                        child: schoolNameText(
                          'We?? udzia?? w XVII Olimpiadzie Informatycznej Junior??w (dla szk???? podstawowych)',
                          maxLines: 3,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
