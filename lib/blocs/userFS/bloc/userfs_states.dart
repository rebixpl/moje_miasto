import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:moje_miasto/models/models.dart';

@immutable
abstract class UserFSState extends Equatable {
  final UserFS userFs;

  const UserFSState(this.userFs);

  @override
  List<Object?> get props => [userFs];
}

class UsersFSInitialState extends UserFSState {
  const UsersFSInitialState(super.userFs);

  @override
  List<Object?> get props => [];
}

class UserFSAddingState extends UserFSState {
  const UserFSAddingState(super.userFs);

  @override
  List<Object?> get props => [];
}

class UserFSAddingDataFromAuthState extends UserFSState {
  const UserFSAddingDataFromAuthState(super.userFs);

  @override
  List<Object?> get props => [];
}

class UserFSAddingAccountToFirebaseState extends UserFSState {
  const UserFSAddingAccountToFirebaseState(super.userFs);

  @override
  List<Object?> get props => [];
}

class UserFSCreateAccountState extends UserFSState {
  const UserFSCreateAccountState(super.userFs);

  @override
  List<Object?> get props => [];
}

class UserFSGmailAddMoreInfoState extends UserFSState {
  const UserFSGmailAddMoreInfoState(super.userFs);

  @override
  List<Object?> get props => [];
}

class UserFSAddedState extends UserFSState {
  const UserFSAddedState(super.userFs);

  @override
  List<Object?> get props => [];
}

// user exists in firebase state
class UserFSExistsInFBState extends UserFSState {
  const UserFSExistsInFBState(super.userFs);

  @override
  List<Object?> get props => [];
}

class UserFSErrorState extends UserFSState {
  final String error;
  UserFSErrorState(this.error) : super(UserFS());

  @override
  List<Object?> get props => [error];
}
