import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_screen/widgets/help_type_selector/cubit/help_type_selector_cubit.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/data/help_types.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class SingleCard extends StatelessWidget {
  final HelpType helpType;

  const SingleCard({
    Key? key,
    required this.helpType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelpTypeSelectorCubit, String>(
      builder: (context, state) {
        final HelpTypeSelectorCubit helpTypeSelectorCubit =
            context.read<HelpTypeSelectorCubit>();
        final String selectedHelpTypeId = helpTypeSelectorCubit.state;

        return GestureDetector(
          onTap: () => helpTypeSelectorCubit.selectHelpTypeId(helpType.id),
          child: Container(
            decoration: BoxDecoration(
              color: selectedHelpTypeId == helpType.id
                  ? AppTheme.kAccentColor
                  : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: schoolTypeTitleText(helpType.title),
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
