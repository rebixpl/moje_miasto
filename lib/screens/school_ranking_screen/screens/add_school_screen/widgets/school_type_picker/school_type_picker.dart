import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/school_type_picker/widgets/school_type_picker_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/school_type_picker/widgets/single_card.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';

class SchoolTypePicker extends StatelessWidget {
  const SchoolTypePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        schoolTypeText(context),
        const SizedBox(height: 14.0),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => SingleCard(
            schoolType: schoolTypes[index],
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 16.0),
          itemCount: schoolTypes.length,
        )
      ],
    );
  }
}
