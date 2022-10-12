import 'package:flutter/material.dart';

class BackgroundImg extends StatelessWidget {
  const BackgroundImg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        image: DecorationImage(
          image: const AssetImage(
            'images/screens/info/info_background.jpeg',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.7),
            BlendMode.modulate,
          ),
        ),
      ),
    );
  }
}
