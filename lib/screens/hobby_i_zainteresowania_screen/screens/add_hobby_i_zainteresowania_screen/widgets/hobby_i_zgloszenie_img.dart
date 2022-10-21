import 'package:flutter/material.dart';

class HobbyIZgloszenieImg extends StatelessWidget {
  const HobbyIZgloszenieImg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: Image.asset(
        'images/screens/hobby_i_zainteresowania_screen/hobby_art_image.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
