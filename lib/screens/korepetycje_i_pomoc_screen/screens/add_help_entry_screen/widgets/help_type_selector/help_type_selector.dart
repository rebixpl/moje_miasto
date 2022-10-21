import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_screen/widgets/help_type_selector/help_type_selector_texts.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_screen/widgets/help_type_selector/single_card.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/data/help_types.dart';

class HelpTypeSelector extends StatelessWidget {
  const HelpTypeSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        czegoPotrzebujeszText(context),
        const SizedBox(height: 14.0),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => SingleCard(
            helpType: helpTypes[index],
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 16.0),
          itemCount: helpTypes.length,
        )
      ],
    );
  }
}
