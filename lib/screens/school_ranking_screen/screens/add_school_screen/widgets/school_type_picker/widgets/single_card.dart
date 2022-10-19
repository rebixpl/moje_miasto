import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/school_type_picker/cubit/school_type_picker_cubit.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class SingleCard extends StatelessWidget {
  final SchoolType schoolType;

  const SingleCard({
    Key? key,
    required this.schoolType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchoolTypePickerCubit, String>(
      builder: (context, state) {
        final SchoolTypePickerCubit schoolTypePickerCubit =
            context.read<SchoolTypePickerCubit>();
        final String selectedSchoolTypeId = schoolTypePickerCubit.state;

        return GestureDetector(
          onTap: () => schoolTypePickerCubit.selectSchoolTypeId(schoolType.id),
          child: Container(
            decoration: BoxDecoration(
              color: selectedSchoolTypeId == schoolType.id
                  ? AppTheme.kAccentColor
                  : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  schoolType.title.allInCaps,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
