import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/app/app.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_bloc.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_events.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_states.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/ca_more_info_screen.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account_google/create_account_google_screen.dart';
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
    final userFSBloc = BlocProvider.of<UserFSBloc>(context);
    // AppBloc has finished login / registration process, we have some data in user variable
    // now the UserFS bloc will try to upload user data into firestore if the user has not created an account before
    return BlocListener<UserFSBloc, UserFSState>(
      listener: (context, state) {
        if (state is UserFSCreateAccountState) {
          if (user.photo == null) {
            // user registered through password and email
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CAMoreInfoScreen(),
              ),
            );
          } else {
            // user registereg through google sign in

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateAccountGoogleScreen(),
              ),
            );
          }
        } else if (state is UserFSGmailAddMoreInfoState) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CAMoreInfoScreen(),
            ),
          );
        } else if (state is UserFSAddingDataFromAuthState) {
          userFSBloc.add(
            UserFSAddDataFromAuthUserToStateEvent(user.id, user.email!),
          );
        } else if (state is UserFSAddingAccountToFirebaseState) {
          userFSBloc.add(UserFSCreateUserEvent());
        }
      },
      child: BlocBuilder<UserFSBloc, UserFSState>(
        builder: (context, state) {
          if ((state is UsersFSInitialState) ||
              (state is UserFSAddingState) ||
              (state is UserFSCreateAccountState) ||
              (state is UserFSAddingDataFromAuthState)) {
            if (state is UsersFSInitialState) {
              userFSBloc.add(UserFSCheckIfUserExistsInFirebaseEvent(user.id));
            }

            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is UserFSErrorState) {
            return Scaffold(
              body: Center(
                child: Text('Error: ${state.error}'),
              ),
            );
          } else {
            // UserFSAddedState, user exists in the firebase
            return BlocConsumer<PageViewNavCubit, PageViewNavState>(
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
            );
          }
        },
      ),
    );
  }
}
