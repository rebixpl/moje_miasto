import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';

// stores one value - currently selected avatar id
class AvatarSelectorCubit extends Cubit<String?> {
  // first id will be default and selected at the beginning
  AvatarSelectorCubit() : super(avatars[0].id);

// set new avatar image id
  void setNewId(String newId) {
    final newAvatarId = newId;
    emit(newAvatarId);
  }

  @override
  void onChange(Change<String?> change) {
    super.onChange(change);
    debugPrint('currentState: ${change.currentState}');
    debugPrint('nextState: ${change.nextState}');
  }
}
