import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/app/app.dart';
import 'package:moje_miasto/screens/home_screen/home_screen.dart';
import 'package:moje_miasto/screens/home_screen/hs_settings_screen/hs_settings_screen.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/custom_bottom_navbar.dart';
import 'package:moje_miasto/screens/profile_screen/profile_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/school_ranking_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/add_school_screen.dart';
import 'package:moje_miasto/screens/waldek_ai_screen/waldek_ai_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();

  static Page<void> page() => const MaterialPage<void>(child: PageViewScreen());
}

class _PageViewScreenState extends State<PageViewScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void _jumpToPage(int page) async {
    _pageController.jumpToPage(page);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);

    return BlocProvider(
      create: (context) => PageViewNavCubit(),
      child: BlocConsumer<PageViewNavCubit, PageViewNavState>(
        listener: (context, state) async {
          if (state is ShowPageState) {
            _jumpToPage(state.page);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                const HomeScreen(),
                const SchoolRankingScreen(),
                const WaldekAIScreen(),
                const ProfileScreen(),
                HomeScreenSettingsScreen(),
                AddSchoolScreen(),
              ],
            ),
            bottomNavigationBar: CustomBottomNavBar(),
          );
        },
      ),
    );
  }
}
