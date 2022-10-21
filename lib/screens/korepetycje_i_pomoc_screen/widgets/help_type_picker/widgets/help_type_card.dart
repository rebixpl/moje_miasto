import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/cubit/help_type_picker_cubit.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/data/help_types.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/widgets/school_type_selector_texts.dart';
import 'package:moje_miasto/theme.dart';

class HelpTypeCard extends StatelessWidget {
  const HelpTypeCard({
    Key? key,
    required this.helpTypePickerCubit,
    required this.index,
    required this.state,
  }) : super(key: key);

  final HelpTypePickerCubit helpTypePickerCubit;
  final int index;
  final String state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        helpTypePickerCubit.setNewId(helpTypes[index].id);
      },
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 14.0,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            border: state == helpTypes[index].id
                ? const Border(
                    bottom: BorderSide(
                      color: AppTheme.kAccentColor,
                      width: 4.0,
                    ),
                  )
                : null,
          ),
          height: 60,
          alignment: Alignment.center,
          child: schoolTypeTitleText(helpTypes[index].title),
        ),
      ),
    );
  }
}
