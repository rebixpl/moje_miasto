import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/theme.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  final List<IconData> iconList = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.trophy,
    FontAwesomeIcons.solidComments,
    FontAwesomeIcons.solidUser, // instead of user icon display custom widget
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageViewNavCubit, PageViewNavState>(
      builder: (context, state) {
        final pageViewNavCubit = context.read<PageViewNavCubit>();

        return AnimatedBottomNavigationBar.builder(
          height: AppTheme.kBottomNavbarHeight,
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? AppTheme.kAccentColor : Colors.white;
            if (iconList[index] == FontAwesomeIcons.solidUser) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                child: CircleAvatar(
                  backgroundColor: Color(avatars[3].bgColor),
                  child: Image.asset(
                      'images/screens/create_account/avatar_selector/${avatars[3].id}.png'),
                ),
              );
            } else {
              return Icon(
                iconList[index],
                size: 24,
                color: color,
              );
            }
          },
          activeIndex: state is ShowPageState ? state.page : 0,
          onTap: pageViewNavCubit.onTap,
          splashSpeedInMilliseconds: 100,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          splashColor: AppTheme.kAccentColor,
          leftCornerRadius: 30.0,
          rightCornerRadius: 30.0,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
        );
      },
    );
  }
}
