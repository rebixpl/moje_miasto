import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// false - the card is closed
// true - the card is opened
class SingleEntryCardCubit extends Cubit<bool> {
  SingleEntryCardCubit() : super(false);

  void toggle() {
    emit(!state);
  }

  @override
  void onChange(Change<bool> change) {
    super.onChange(change);
    debugPrint('SingleEntryCardCubit - currentState: ${change.currentState}');
    debugPrint('SingleEntryCardCubit - nextState: ${change.nextState}');
  }
}
