import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/data/help_types.dart';

class HelpTypePickerCubit extends Cubit<String> {
  // first id will be default and selected at the beginning
  HelpTypePickerCubit() : super(helpTypes[0].id);

  void setNewId(String newId) {
    emit(newId);
  }

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint('HelpTypePickerCubit - currentState: ${change.currentState}');
    debugPrint('HelpTypePickerCubit - nextState: ${change.nextState}');
  }
}
