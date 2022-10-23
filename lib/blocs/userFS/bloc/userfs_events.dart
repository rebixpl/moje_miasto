import 'package:equatable/equatable.dart';
import 'package:moje_miasto/models/models.dart';

abstract class UserFSEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UserFSCreateUserEvent extends UserFSEvent {}

class UserFSAddCreateAccountWithEmailDataToStateEvent extends UserFSEvent {
  final String avatarId;
  final String username;

  UserFSAddCreateAccountWithEmailDataToStateEvent(
    this.avatarId,
    this.username,
  );
}

class UserFSAddDataFromAuthUserToStateEvent extends UserFSEvent {
  final String uid;
  final String email;

  UserFSAddDataFromAuthUserToStateEvent(
    this.uid,
    this.email,
  );
}

class UserFSAddCreateAccountMoreInfoDataToStateEvent extends UserFSEvent {
  final String accountType;
  final String cityId;

  UserFSAddCreateAccountMoreInfoDataToStateEvent(
    this.accountType,
    this.cityId,
  );
}

class UserFSCheckIfUserExistsInFirebaseEvent extends UserFSEvent {
  final String uid;

  UserFSCheckIfUserExistsInFirebaseEvent(this.uid);
}
