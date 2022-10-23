import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/widgets/arrow_button.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_konkursy_i_olimpiady/screens/uczestnicy_twoich_konkursow/screens/ye_dane_uczestnikow_twojego_konkursu/widgets/single_entry_texts.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_school_ranking_screen/widgets/delete_button/delete_confirmation_snackbar.dart';

class SingleEntry extends StatelessWidget {
  const SingleEntry({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleTextSE('Adres e-mail osoby zgłaszającej'),
                  const SizedBox(height: 4.0),
                  infoTextSE('rebixcraft@gmail.com'),
                  const SizedBox(height: 10.0),
                  titleTextSE('Numer telefonu osoby zgłaszającej'),
                  const SizedBox(height: 4.0),
                  infoTextSE('847482522'),
                  const SizedBox(height: 10.0),
                  titleTextSE('Skład drużyny / Twoje Imię i Nazwisko'),
                  const SizedBox(height: 4.0),
                  infoTextSE('Andrzej Pompka'),
                  const SizedBox(height: 10.0),
                  titleTextSE('Pełna nazwa szkoły / szkół'),
                  const SizedBox(height: 4.0),
                  infoTextSE('Szkoła Podstawowa im. Jana Faca w Lublinie'),
                  const SizedBox(height: 10.0),
                  titleTextSE('osoba zgłaszająca'),
                  const SizedBox(height: 4.0),
                  infoTextSE('uczeń / uczennica'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ArrowButton(
                    onTap: () {
                      showDeleteConfirmationSnackbar(
                        context,
                        onYesTap: () {},
                      );
                    },
                    icon: FontAwesomeIcons.trash,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
