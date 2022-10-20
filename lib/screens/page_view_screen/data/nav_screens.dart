import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/home_screen/home_screen.dart';
import 'package:moje_miasto/screens/home_screen/hs_settings_screen/hs_settings_screen.dart';
import 'package:moje_miasto/screens/profile_screen/profile_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/school_ranking_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_confirmation_screen/add_school_confirmation_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/add_school_screen.dart';
import 'package:moje_miasto/screens/waldek_ai_screen/waldek_ai_screen.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_konkursy_i_olimpiady/ye_konkursy_i_olimpiady_screen.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_korepetycje_i_pomoc_screen/ye_korepetycje_i_pomoc_screen.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_school_ranking_screen/ye_school_ranking_screen.dart';
import 'package:moje_miasto/screens/your_entries_screen/your_entries_screen.dart';

List<Widget> navScreens = [
  const HomeScreen(),
  const SchoolRankingScreen(),
  const WaldekAIScreen(),
  ProfileScreen(),
  HomeScreenSettingsScreen(),
  AddSchoolScreen(),
  const AddSchoolConfirmationScreen(),
  const YourEntriesScreen(),
  const YeSchoolRankingScreen(),
  const YeKorepetycjeIPomocScreen(),
  const YeKonkursyIOlimpiadyScreen(),
];
