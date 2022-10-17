import 'package:flutter/material.dart';

class SchoolPhoto extends StatelessWidget {
  final String photoUrl;

  const SchoolPhoto({
    Key? key,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(photoUrl),
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.2),
            BlendMode.darken,
          ),
        ),
      ),
    );
  }
}
