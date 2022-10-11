import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // TODO: Nawiguj jeden ekran do tyłu
      onTap: () => Navigator.pop(context),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Theme.of(context).colorScheme.secondary,
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            size: 30.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
