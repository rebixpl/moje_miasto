import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardData {
  final String cardTitle;
  final String photoUrl;
  final String contentText1, contentText2, contentText3;
  final IconData cardIcon;
  final String accountTypeId;

  const CardData({
    required this.cardTitle,
    required this.photoUrl,
    required this.contentText1,
    required this.contentText2,
    required this.contentText3,
    required this.cardIcon,
    required this.accountTypeId,
  });
}

const List<CardData> cards = [
  CardData(
    cardTitle: 'Uczniem',
    accountTypeId: 'uczen',
    photoUrl: 'images/screens/tos/paper_sheets_tos.png',
    contentText1:
        'Znajdż osoby o podobnych zainteresowaniach i rozwijaj się razem z nimi',
    contentText2: 'Listy szkół w twoim mieście wraz z rankingiem',
    contentText3: 'Listy konkursów i olimpiad w twoim mieście',
    cardIcon: FontAwesomeIcons.userGraduate,
  ),
  CardData(
    cardTitle: 'Obywatelem',
    accountTypeId: 'obywatel',
    photoUrl: 'images/screens/tos/paper_sheets_tos.png',
    contentText1: 'Listy projektów realizowanych w twoim mieście',
    contentText2:
        'Zgłoszenie do lokalnego wolontariatu działającego w twoim mieście',
    contentText3: 'Zbiórek pieniędzy',
    cardIcon: FontAwesomeIcons.solidUser,
  ),
  CardData(
    cardTitle: 'Małym przedsiębiorcą',
    accountTypeId: 'przedsiebiorca',
    photoUrl: 'images/screens/tos/paper_sheets_tos.png',
    contentText1:
        'Specjalnego miejsca przeznaczonego do promowania twoich usług wśród lokalnej społeczności',
    contentText2: 'Znalezienia potencjalnych klientów',
    contentText3: '',
    cardIcon: FontAwesomeIcons.briefcase,
  ),
];
