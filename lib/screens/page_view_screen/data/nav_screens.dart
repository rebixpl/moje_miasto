import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/home_screen/home_screen.dart';
import 'package:moje_miasto/screens/home_screen/hs_settings_screen/hs_settings_screen.dart';
import 'package:moje_miasto/screens/profile_screen/profile_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/school_ranking_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/add_school_screen.dart';
import 'package:moje_miasto/screens/waldek_ai_screen/waldek_ai_screen.dart';

List<Widget> navScreens = <Widget>[
  const HomeScreen(),
  const SchoolRankingScreen(),
  const WaldekAIScreen(),
  const ProfileScreen(),
  HomeScreenSettingsScreen(),
  AddSchoolScreen(),
];
