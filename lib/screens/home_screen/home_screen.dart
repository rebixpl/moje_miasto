import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/home_screen/widgets/custom_bottom_navbar.dart';
import 'package:moje_miasto/screens/home_screen/widgets/home_screen_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeScreenAppbar(),
      body: Text("data"),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
