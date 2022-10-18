import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

class SchoolCircularImage extends StatelessWidget {
  final int place;
  final String imageUrl;

  const SchoolCircularImage({
    Key? key,
    required this.place,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double baseRadius;
    if (place == 1) {
      baseRadius = 50.0;
    } else if (place == 2) {
      baseRadius = 40.0;
    } else {
      baseRadius = 34.0;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: CircleAvatar(
        backgroundColor: const Color(0xff152C4F),
        radius: baseRadius + 6.0,
        child: CircleAvatar(
          backgroundColor: AppTheme.kDividerColor,
          radius: baseRadius + 4.0,
          child: CircleAvatar(
            backgroundColor: const Color(0xff152C4F),
            radius: baseRadius + 2.0,
            child: CircleAvatar(
              radius: baseRadius,
              backgroundImage: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ).image,
            ),
          ),
        ),
      ),
    );
  }
}
