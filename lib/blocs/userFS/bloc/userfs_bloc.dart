import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_events.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_states.dart';
import 'package:moje_miasto/blocs/userFS/repo/userfs_repo.dart';

class UserFSBloc extends Bloc<UserFSEvent, UserFSState> {
  final UserFSRepository userFSRepository;
  UserFSBloc({required this.userFSRepository}) : super(UsersFSInitialState()) {
    on<UserFSCreateUserEvent>(_onCreateUser);
    on<UserFSCheckIfUserExistsInFirebaseEvent>(_onCheckIfUserExistsInFirebase);
  }

  void _onCreateUser(
    UserFSCreateUserEvent event,
    Emitter<UserFSState> emit,
  ) async {
    emit(UserFSAddedState());
    try {
      await userFSRepository.createUser(event.userFS);
      emit(UserFSAddedState());
    } catch (e) {
      emit(UserFSErrorState(e.toString()));
    }
  }

  void _onCheckIfUserExistsInFirebase(
    UserFSCheckIfUserExistsInFirebaseEvent event,
    Emitter<UserFSState> emit,
  ) async {
    try {
      bool doesUserExist =
          await userFSRepository.checkIfUserExistsInFirebase(event.uid);
      if (doesUserExist) {
        emit(UserFSAddedState());
      } else {
        emit(UserFSCreateAccountState());
      }
    } catch (e) {
      emit(UserFSErrorState(e.toString()));
    }
  }
}
