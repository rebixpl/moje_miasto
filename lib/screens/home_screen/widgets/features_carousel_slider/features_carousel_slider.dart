import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/home_screen/widgets/features_carousel_slider/data/features_carousel_data.dart';
import 'package:moje_miasto/screens/home_screen/widgets/features_carousel_slider/widgets/background_image.dart';
import 'package:moje_miasto/screens/home_screen/widgets/features_carousel_slider/widgets/features_carousel_texts.dart';
import 'package:moje_miasto/screens/page_view_screen/data/nav_screens_enum.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/theme.dart';

class FeaturesCarouselSlider extends StatelessWidget {
  const FeaturesCarouselSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageViewNavCubit = context.read<PageViewNavCubit>();

    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 13 / 9,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
      items: carouselDatas.map((carouselData) {
        return GestureDetector(
          onTap: () {
            debugPrint('card ${carouselData.cardCategory} tapped');
            if (carouselData.cardCategoryId ==
                CardCategoryTypesEnum.rankingiioceny) {
              pageViewNavCubit.onTap(
                NavScreensEnum.schoolRankingScreen.index,
              ); // navigate to school ranking screen
            } else if (carouselData.cardCategoryId ==
                CardCategoryTypesEnum.korepetycjeipomoc) {
              pageViewNavCubit.onTap(
                NavScreensEnum.korepetycjeIPomocScreen.index,
              );
            } else if (carouselData.cardCategoryId ==
                CardCategoryTypesEnum.hobbyizainteresowania) {
              pageViewNavCubit.onTap(
                NavScreensEnum.hobbyIZainteresowaniaScreen.index,
              );
            }
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Stack(
              children: [
                BackgroundImage(photoUrl: carouselData.photoUrl),
                Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: SizedBox(
                    height: 130.0,
                    child: Card(
                      margin: EdgeInsets.zero,
                      color: const Color(0xff535279),
                      child: Padding(
                        padding: const EdgeInsets.all(
                          AppTheme.kDefaultPadding / 2,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            categoryText(carouselData.cardCategory),
                            const SizedBox(height: 10.0),
                            descriptionText(carouselData.cardDescription),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
