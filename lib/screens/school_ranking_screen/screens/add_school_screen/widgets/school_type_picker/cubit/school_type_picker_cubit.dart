import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';

// stores single value - currently selected school type id
class SchoolTypePickerCubit extends Cubit<String> {
  // first id will be default and selected at the beginning
  SchoolTypePickerCubit() : super(schoolTypesSelectorList[0].id);

// set new avatar image id
  void selectSchoolTypeId(String newId) => emit(newId);

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint('SchoolTypePickerCubit - currentState: ${change.currentState}');
    debugPrint('SchoolTypePickerCubit - nextState: ${change.nextState}');
  }
}
