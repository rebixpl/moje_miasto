import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class UserFSState extends Equatable {}

class UsersFSInitialState extends UserFSState {
  @override
  List<Object?> get props => [];
}

class UserFSAddingState extends UserFSState {
  @override
  List<Object?> get props => [];
}

class UserFSCreateAccountState extends UserFSState {
  @override
  List<Object?> get props => [];
}

class UserFSAddedState extends UserFSState {
  @override
  List<Object?> get props => [];
}

class UserFSErrorState extends UserFSState {
  final String error;
  UserFSErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
