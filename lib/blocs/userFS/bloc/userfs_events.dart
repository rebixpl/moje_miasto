import 'package:equatable/equatable.dart';
import 'package:moje_miasto/models/models.dart';

abstract class UserFSEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UserFSCreateUserEvent extends UserFSEvent {
  final UserFS userFS;

  UserFSCreateUserEvent(this.userFS);
}

class UserFSCheckIfUserExistsInFirebaseEvent extends UserFSEvent {
  final String uid;

  UserFSCheckIfUserExistsInFirebaseEvent(this.uid);
}
