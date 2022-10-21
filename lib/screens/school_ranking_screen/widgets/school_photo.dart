import 'package:flutter/material.dart';

class SchoolPhoto extends StatelessWidget {
  final String photoUrl;
  final double height;

  const SchoolPhoto({
    Key? key,
    required this.photoUrl,
    this.height = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
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
