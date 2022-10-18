import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/sr_sliver_appbar_texts.dart';

class SingleColumn extends StatelessWidget {
  const SingleColumn({
    Key? key,
    required this.height,
    required this.place,
  }) : super(key: key);

  final double height;
  final int place;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff152C4F),
            Color(0xff211A4C),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Center(
        child: placeText(place),
      ),
    );
  }
}
