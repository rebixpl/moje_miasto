import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/school_circular_image.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/single_column.dart';

class LeaderboardColumn extends StatelessWidget {
  final int place;
  final double height;

  const LeaderboardColumn({
    Key? key,
    required this.place,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SchoolCircularImage(
          place: place,
          imageUrl:
              'images/screens/ca_more_info/account_type_selector/uczen.jpeg',
        ),
        SingleColumn(
          height: height,
          place: place,
        ),
      ],
    );
  }
}
