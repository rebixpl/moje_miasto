import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/home_screen/hs_settings_screen/hs_settings_screen.dart';

class HomeScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false, // Don't show the leading button
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.city,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 30.0,
                ),
                const SizedBox(width: 24.0),
                Text(
                  'Lublin',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 34.0,
                  ),
                ),
              ],
            ),
            IconButton(
              splashRadius: 22.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        HomeScreenSettingsScreen(),
                  ),
                );
              },
              icon: Icon(
                FontAwesomeIcons.gear,
                color: Theme.of(context).colorScheme.secondary,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20.0);
}
