import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/data/help_types.dart';

class HelpTypeSelectorCubit extends Cubit<String> {
  HelpTypeSelectorCubit() : super(helpTypes[0].id);

// set new avatar image id
  void selectHelpTypeId(String newId) => emit(newId);

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint('HelpTypeSelectorCubit - currentState: ${change.currentState}');
    debugPrint('HelpTypeSelectorCubit - nextState: ${change.nextState}');
  }
}
