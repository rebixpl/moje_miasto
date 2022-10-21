import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/app/app.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatar_selector.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/cubits/avatar_selector_cubit.dart';
import 'package:moje_miasto/screens/page_view_screen/data/nav_screens_enum.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/screens/profile_screen/widgets/edit_username_snackbar.dart';
import 'package:moje_miasto/screens/profile_screen/widgets/home_screen_personalization_btn/section_button.dart';
import 'package:moje_miasto/screens/profile_screen/widgets/log_out_button.dart';
import 'package:moje_miasto/screens/profile_screen/widgets/profile_screen_texts.dart';
import 'package:moje_miasto/screens/profile_screen/widgets/user_avatar.dart';
import 'package:moje_miasto/theme.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final TextEditingController usernameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    final pageViewNavCubit = context.read<PageViewNavCubit>();

    return BlocProvider(
      create: (context) => AvatarSelectorCubit(),
      child: Scaffold(
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
                      child: Column(
                        children: [
                          const SizedBox(height: 10.0),
                          UserAvatar(
                            avatar: avatars[3],
                          ),
                          const SizedBox(height: 14.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              usernameText(context, 'cebullaro_drapallo'),
                              const SizedBox(width: 10.0),
                              IconButton(
                                padding: EdgeInsets.zero,
                                splashRadius: 18.0,
                                constraints:
                                    const BoxConstraints(), // removes this stupid default padding
                                iconSize: 18.0,
                                onPressed: () {
                                  showEditUsernameSnackbar(
                                    context: context,
                                    usernameController: usernameController,
                                    formKey: _formKey,
                                  );
                                },
                                icon: Icon(
                                  FontAwesomeIcons.pen,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          emailText(context, user.email.toString()),
                          const SizedBox(height: 20.0),
                          userIdText(context, user.id.toString()),
                          const SizedBox(height: 20.0),
                          const SelectAvatar(),
                          const SizedBox(height: 20.0),
                          SectionButton(
                            label: 'personalizacja ekranu głównego',
                            icon: FontAwesomeIcons.house,
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              pageViewNavCubit.onTap(
                                NavScreensEnum.homeScreenSettingsScreen.index,
                              );
                            },
                          ),
                          const SizedBox(height: 20.0),
                          SectionButton(
                            label: 'twoje wpisy',
                            icon: FontAwesomeIcons.clipboardList,
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();

                              pageViewNavCubit.onTap(
                                NavScreensEnum.yourEntriesScreen.index,
                              );
                            },
                          ),
                          const SizedBox(height: 30.0),
                          LogOutButton(onTap: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            context.read<AppBloc>().add(AppLogoutRequested());
                          }),
                          const SizedBox(height: AppTheme.kBottomNavbarHeight),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
