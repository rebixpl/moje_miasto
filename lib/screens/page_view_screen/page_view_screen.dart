import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/home_screen/home_screen.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/custom_bottom_navbar.dart';
import 'package:moje_miasto/screens/school_ranking_screen/school_ranking_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
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
                HomeScreen(),
                SchoolRankingScreen(),
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
