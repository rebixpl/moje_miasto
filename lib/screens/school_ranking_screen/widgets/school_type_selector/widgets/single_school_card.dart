import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/cubit/school_type_selector_cubit.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/widgets/school_type_selector_texts.dart';
import 'package:moje_miasto/theme.dart';

class SingleSchoolCard extends StatelessWidget {
  const SingleSchoolCard({
    Key? key,
    required this.schoolTypeSelectorCubit,
    required this.index,
    required this.state,
  }) : super(key: key);

  final SchoolTypeSelectorCubit schoolTypeSelectorCubit;
  final int index;
  final String state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        schoolTypeSelectorCubit.setNewId(schoolTypes[index].id);
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
            border: state == schoolTypes[index].id
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
          child: schoolTypeTitleText(schoolTypes[index].title),
        ),
      ),
    );
  }
}
