import 'package:flutter/widgets.dart';
import 'package:moje_miasto/app/app.dart';
import 'package:moje_miasto/screens/login/login_screen.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
    // return [HomePage.page()];

    case AppStatus.unauthenticated:
      return [LoginScreen.page()];
  }
}
