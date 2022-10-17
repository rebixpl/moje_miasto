// stores currently selected city id
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountTypeSelectorCubit extends Cubit<String> {
  AccountTypeSelectorCubit() : super('');

  void setAccountTypeId(String newId) {
    final selectedAccountId = newId;
    emit(selectedAccountId);
  }

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint('currentState: ${change.currentState}');
    debugPrint('nextState: ${change.nextState}');
  }
}
