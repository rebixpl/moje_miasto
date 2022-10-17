import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/data/card_data.dart';

class AccountTypeSelectorCubit extends Cubit<String> {
  AccountTypeSelectorCubit() : super(cards[0].accountTypeId);

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
