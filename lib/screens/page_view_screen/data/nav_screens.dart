import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/hobby_i_zainteresowania_screen.dart';
import 'package:moje_miasto/screens/home_screen/home_screen.dart';
import 'package:moje_miasto/screens/home_screen/hs_settings_screen/hs_settings_screen.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/korepetycje_i_pomoc_screen.dart';
import 'package:moje_miasto/screens/profile_screen/profile_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/school_ranking_screen.dart';
import 'package:moje_miasto/screens/waldek_ai_screen/waldek_ai_screen.dart';
import 'package:moje_miasto/screens/your_entries_screen/screens/ye_hobby_i_zainteresowania/ye_hobby_i_zainteresowania.dart';
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
  const YourEntriesScreen(),
  const YeSchoolRankingScreen(),
  const YeKorepetycjeIPomocScreen(),
  const YeKonkursyIOlimpiadyScreen(),
  const KorepetycjeIPomocScreen(),
  const HobbyIZainteresowaniaScreen(),
  const YeHobbyIZainteresowaniaScreen(),
];
