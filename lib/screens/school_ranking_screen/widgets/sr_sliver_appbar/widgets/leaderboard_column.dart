import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/widgets/photo_ui_changer_debug.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/school_circular_image.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/single_column.dart';

class LeaderboardColumn extends StatelessWidget {
  final int place;
  final double height;
  final String schoolType;

  const LeaderboardColumn({
    Key? key,
    required this.place,
    required this.height,
    required this.schoolType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is temporary only to see changes while im making the ui layer, later the data will be pulled from the firebase
    final String photoUrl = debugPhotoChanger(schoolType);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SchoolCircularImage(
          place: place,
          imageUrl: photoUrl,
        ),
        SingleColumn(
          height: height,
          place: place,
        ),
      ],
    );
  }
}
