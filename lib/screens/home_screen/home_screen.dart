import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/home_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/screens/home_screen/widgets/custom_bottom_navbar/custom_bottom_navbar.dart';
import 'package:moje_miasto/screens/home_screen/widgets/home_screen_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  Future<void> _animateToPage(int page) async {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageViewNavCubit(),
      child: BlocConsumer<PageViewNavCubit, PageViewNavState>(
        listener: (context, state) async {
          if (state is ShowPageState) {
            await _animateToPage(state.page);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: const [
                Scaffold(
                  appBar: HomeScreenAppbar(),
                  body: Center(
                    child: Text('Home Screen'),
                  ),
                ),
                Scaffold(
                  body: Center(
                    child: Text('Ranking & Oceny'),
                  ),
                ),
                Scaffold(
                  body: Center(
                    child: Text('Waldek AI Chatbot'),
                  ),
                ),
                Scaffold(
                  body: Center(
                    child: Text('Profile Page'),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: CustomBottomNavBar(),
          );
        },
      ),
    );
  }
}
