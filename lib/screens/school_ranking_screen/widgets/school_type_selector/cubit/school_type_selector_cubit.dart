import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';

class SchoolTypeSelectorCubit extends Cubit<String> {
  // first id will be default and selected at the beginning
  SchoolTypeSelectorCubit() : super(schoolTypesSelectorList[0].id);

  void setNewId(String newId) {
    emit(newId);
  }

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint(
        'SchoolTypeSelectorCubit - currentState: ${change.currentState}');
    debugPrint('SchoolTypeSelectorCubit - nextState: ${change.nextState}');
  }
}
