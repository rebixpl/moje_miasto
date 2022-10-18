class CarouselData {
  final String cardDescription, cardCategory;
  final String photoUrl;
  final CardCategoryTypesEnum cardCategoryId;

  const CarouselData({
    required this.cardCategory,
    required this.cardDescription,
    required this.photoUrl,
    required this.cardCategoryId,
  });
}

enum CardCategoryTypesEnum {
  hobbyizainteresowania,
  rankingiioceny,
  konkursyiolimpiady,
  korepetycjeipomoc,
}

const List<CarouselData> carouselDatas = [
  CarouselData(
    cardCategory: 'RANKINGI & OCENY',
    cardDescription: 'Najlepsze szkoły w mieście Lublin, Zagłosuj na Swoją',
    cardCategoryId: CardCategoryTypesEnum.rankingiioceny,
    photoUrl:
        'images/screens/home_screen/features_carousel/rankingi_i_oceny.jpeg',
  ),
  CarouselData(
    cardCategory: 'HOBBY & ZAINTERESOWANIA',
    cardDescription:
        'Znajdż osoby o podobnych zainteresowaniach i rozwijaj się razem z nimi',
    cardCategoryId: CardCategoryTypesEnum.hobbyizainteresowania,
    photoUrl:
        'images/screens/home_screen/features_carousel/hobby_i_zainteresowania.jpeg',
  ),
  CarouselData(
    cardCategory: 'KONKURSY & OLIMPIADY',
    cardDescription:
        'Zobacz jakie konkursy aktualnie mają miejsce w twoim mieście i weż w nich udział',
    cardCategoryId: CardCategoryTypesEnum.konkursyiolimpiady,
    photoUrl:
        'images/screens/home_screen/features_carousel/konkursy_i_olimpiady.jpeg',
  ),
  CarouselData(
    cardCategory: 'KOREPETYCJE & POMOC',
    cardDescription:
        'Masz problemy w nauce? a może jesteś geniuszem i chcesz komuś pomóc? sprawdź tutaj!',
    cardCategoryId: CardCategoryTypesEnum.korepetycjeipomoc,
    photoUrl:
        'images/screens/home_screen/features_carousel/korepetycje_i_pomoc.jpeg',
  ),
];
