import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/osoba_zglaszajaca_selector/data/data.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/osoba_zglaszajaca_selector/widgets/osoba_zglaszajaca_selector_texts.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/osoba_zglaszajaca_selector/widgets/single_card.dart';

class OsobaZglaszajacaSelector extends StatelessWidget {
  const OsobaZglaszajacaSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        osobaZglaszajacaText(context),
        const SizedBox(height: 14.0),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => SingleCard(
            osobaZglaszajaca: osobyZglaszajace[index],
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 16.0),
          itemCount: osobyZglaszajace.length,
        )
      ],
    );
  }
}
