import 'package:flutter/material.dart';

class BackgroundCupImage extends StatelessWidget {
  const BackgroundCupImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: Image.asset(
        'images/screens/konkursy_i_olimpiady_screen/competition_cup.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
