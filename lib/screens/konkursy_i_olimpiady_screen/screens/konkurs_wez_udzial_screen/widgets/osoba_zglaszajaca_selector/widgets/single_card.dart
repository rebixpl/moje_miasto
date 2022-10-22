import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/osoba_zglaszajaca_selector/cubit/osoba_zglaszajaca_selector_cubit.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/osoba_zglaszajaca_selector/data/data.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class SingleCard extends StatelessWidget {
  final OsobaZglaszajaca osobaZglaszajaca;

  const SingleCard({
    Key? key,
    required this.osobaZglaszajaca,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OsobaZglaszajacaSelectorCubit, String>(
      builder: (context, state) {
        final OsobaZglaszajacaSelectorCubit osobaZglaszajacaSelectorCubit =
            context.read<OsobaZglaszajacaSelectorCubit>();

        final String selectedOsobaId = osobaZglaszajacaSelectorCubit.state;

        return GestureDetector(
          onTap: () =>
              osobaZglaszajacaSelectorCubit.selectPersonId(osobaZglaszajaca.id),
          child: Container(
            decoration: BoxDecoration(
              color: selectedOsobaId == osobaZglaszajaca.id
                  ? AppTheme.kAccentColor
                  : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: schoolTypeTitleText(osobaZglaszajaca.title),
              ),
            ),
          ),
        );
      },
    );
  }

  Text schoolTypeTitleText(String text) {
    return Text(
      text.allInCaps,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
