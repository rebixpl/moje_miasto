import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardData {
  final String cardTitle;
  final String photoUrl;
  final String contentText1, contentText2, contentText3;
  final Icon cardIcon;

  const CardData({
    required this.cardTitle,
    required this.photoUrl,
    required this.contentText1,
    required this.contentText2,
    required this.contentText3,
    required this.cardIcon,
  });
}

const List<CardData> cards = [
  CardData(
    cardTitle: 'Obywatelem',
    photoUrl: 'images/screens/tos/paper_sheets_tos.png',
    contentText1: 'Listy projektów realizowanych w twoim mieście',
    contentText2:
        'Zgłoszenie do lokalnego wolontariatu działającego w twoim mieście',
    contentText3: 'Zbiórek pieniędzy',
    cardIcon: Icon(FontAwesomeIcons.user),
  ),
  CardData(
    cardTitle: 'Uczniem',
    photoUrl: 'images/screens/tos/paper_sheets_tos.png',
    contentText1:
        'Znajdż osoby o podobnych zainteresowaniach i rozwijaj się razem z nimi',
    contentText2: 'Listy szkół w twoim mieście wraz z rankingiem',
    contentText3: 'Listy konkursów i olimpiad w twoim mieście',
    cardIcon: Icon(FontAwesomeIcons.userGraduate),
  ),
  CardData(
    cardTitle: 'Małym przedsiębiorcą',
    photoUrl: 'images/screens/tos/paper_sheets_tos.png',
    contentText1:
        'Specjalnego miejsca przeznaczonego do promowania twoich usług wśród lokalnej społeczności',
    contentText2: 'Znalezienia potencjalnych klientów',
    contentText3: '',
    cardIcon: Icon(FontAwesomeIcons.user),
  ),
];
