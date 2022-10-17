import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String imagePath;

  const CardImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.2),
            BlendMode.darken,
          ),
        ),
      ),
    );
  }
}
