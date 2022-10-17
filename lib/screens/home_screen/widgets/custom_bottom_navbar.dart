import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';
import 'package:moje_miasto/theme.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  var _bottomNavIndex = 0; //default index of a first screen

  final List<IconData> iconList = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.trophy,
    FontAwesomeIcons.solidComments,
    FontAwesomeIcons.solidUser, // instead of user icon display custom widget
  ];

  void _onTap(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      height: 60.0,
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
      activeIndex: _bottomNavIndex,
      onTap: _onTap,
      splashSpeedInMilliseconds: 100,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      splashColor: AppTheme.kAccentColor,
      leftCornerRadius: 30.0,
      rightCornerRadius: 30.0,
      gapLocation: GapLocation.none,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
    );
  }
}
