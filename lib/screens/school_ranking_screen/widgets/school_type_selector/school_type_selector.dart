import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/cubit/school_type_selector_cubit.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/widgets/single_school_card.dart';

class SchoolTypeSelector extends StatelessWidget {
  const SchoolTypeSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchoolTypeSelectorCubit, String>(
      builder: (context, state) {
        SchoolTypeSelectorCubit schoolTypeSelectorCubit =
            context.read<SchoolTypeSelectorCubit>();

        return Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: SingleSchoolCard(
                schoolTypeSelectorCubit: schoolTypeSelectorCubit,
                index: index,
                state: state,
              ),
            ),
            itemCount: schoolTypesSelectorList.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 0.0),
          ),
        );
      },
    );
  }
}
