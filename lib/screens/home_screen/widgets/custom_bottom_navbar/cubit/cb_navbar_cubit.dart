import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class PageViewNavState extends Equatable {}

class ShowPageState extends PageViewNavState {
  ShowPageState(this.page);

  final int page;

  @override
  List<Object> get props => [page];
}

class PageViewNavCubit extends Cubit<PageViewNavState> {
  PageViewNavCubit()
      : super(ShowPageState(0)); // 0 - default index of a first screen

  Future<void> onTap(int index) async {
    emit(ShowPageState(index));
  }

  @override
  void onChange(Change<PageViewNavState> change) {
    super.onChange(change);
    debugPrint('PageViewNavCubit - currentState: ${change.currentState}');
    debugPrint('PageViewNavCubit - nextState: ${change.nextState}');
  }
}
