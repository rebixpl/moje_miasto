import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/app/app.dart';
import 'package:moje_miasto/screens/page_view_screen/data/nav_screens.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/custom_bottom_navbar.dart';

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

  void _jumpToPage(int page) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    _pageController.jumpToPage(page);
  }

  Future<void> _goBack() async {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    await _pageController.previousPage(
      duration: const Duration(milliseconds: 1),
      curve: Curves.bounceIn,
    );
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
          } else if (state is GoBackState) {
            _goBack();
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: navScreens,
            ),
            bottomNavigationBar: CustomBottomNavBar(),
          );
        },
      ),
    );
  }
}
