import 'package:bloc/bloc.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_events.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_states.dart';
import 'package:moje_miasto/blocs/userFS/repo/userfs_repo.dart';
import 'package:moje_miasto/models/models.dart';

class UserFSBloc extends Bloc<UserFSEvent, UserFSState> {
  final UserFSRepository userFSRepository;
  UserFSBloc({required this.userFSRepository})
      : super(UsersFSInitialState(UserFS())) {
    on<UserFSCreateUserEvent>(_onCreateUser);
    on<UserFSCheckIfUserExistsInFirebaseEvent>(_onCheckIfUserExistsInFirebase);
    on<UserFSAddCreateAccountWithEmailDataToStateEvent>(
        _onAddCreateAccountWithEmailData);
    on<UserFSAddCreateAccountMoreInfoDataToStateEvent>(
        _onAddCreateAccountMoreInfoData);
    on<UserFSAddDataFromAuthUserToStateEvent>(_onAddDataFromAuthUser);
  }

  void _onAddDataFromAuthUser(
    UserFSAddDataFromAuthUserToStateEvent event,
    Emitter<UserFSState> emit,
  ) {
    emit(
      UserFSAddingAccountToFirebaseState(
        state.userFs.copyWith(
          email: event.email,
          uid: event.uid,
        ),
      ),
    );
  }

  void _onAddCreateAccountMoreInfoData(
    UserFSAddCreateAccountMoreInfoDataToStateEvent event,
    Emitter<UserFSState> emit,
  ) {
    emit(
      UserFSAddingDataFromAuthState(
        state.userFs.copyWith(
          accountType: event.accountType,
          cityId: event.cityId,
        ),
      ),
    );
  }

  void _onAddCreateAccountWithEmailData(
    UserFSAddCreateAccountWithEmailDataToStateEvent event,
    Emitter<UserFSState> emit,
  ) {
    emit(
      UsersFSInitialState(
        state.userFs.copyWith(
          username: event.username,
          avatarId: event.avatarId,
        ),
      ),
    );
  }

  void _onCreateUser(
    UserFSCreateUserEvent event,
    Emitter<UserFSState> emit,
  ) async {
    emit(UserFSAddingState(state.userFs));
    try {
      await userFSRepository.createUser(state.userFs);
      emit(UserFSAddedState(state.userFs));
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
        emit(UserFSAddedState(state.userFs));
      } else {
        emit(UserFSCreateAccountState(state.userFs));
      }
    } catch (e) {
      emit(UserFSErrorState(e.toString()));
    }
  }
}
