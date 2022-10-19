import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/add_school_screen.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/sr_sliver_appbar_texts.dart';

class SchoolRankingAppBar extends StatelessWidget {
  const SchoolRankingAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          bestSchoolsText(),
          IconButton(
            splashRadius: 22.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddSchoolScreen(),
                ),
              );
            },
            icon: const Icon(
              FontAwesomeIcons.squarePlus,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
