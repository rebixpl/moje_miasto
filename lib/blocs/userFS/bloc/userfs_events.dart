import 'package:equatable/equatable.dart';
import 'package:moje_miasto/models/models.dart';

abstract class UserFSEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CreateUserEvent extends UserFSEvent {
  final UserFS userFS;

  CreateUserEvent(this.userFS);
}
