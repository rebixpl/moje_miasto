import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/cubit/help_type_picker_cubit.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/data/help_types.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/widgets/help_type_card.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';

class HelpTypePicker extends StatelessWidget {
  const HelpTypePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelpTypePickerCubit, String>(
      builder: (context, state) {
        HelpTypePickerCubit helpTypePickerCubit =
            context.read<HelpTypePickerCubit>();

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
              child: HelpTypeCard(
                helpTypePickerCubit: helpTypePickerCubit,
                index: index,
                state: state,
              ),
            ),
            itemCount: helpTypes.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 0.0),
          ),
        );
      },
    );
  }
}
