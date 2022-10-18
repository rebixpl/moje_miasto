import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/leaderboard_column.dart';

class SchoolRankingFlexibleAppBar extends StatelessWidget {
  const SchoolRankingFlexibleAppBar({
    Key? key,
  }) : super(key: key);

  final double appBarHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff211A4C),
            Color(0xff8d89a5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                LeaderboardColumn(place: 2, height: 140.0),
                SizedBox(width: 10.0),
                LeaderboardColumn(place: 1, height: 200.0),
                SizedBox(width: 10.0),
                LeaderboardColumn(place: 3, height: 100.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
