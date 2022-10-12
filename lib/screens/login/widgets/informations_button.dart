import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/info/info_screen.dart';

class InformationsButton extends StatelessWidget {
  const InformationsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          // TODO: Nawiguj do ekranu informacji about us
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const InfoScreen()),
          ),
          child: SizedBox(
            width: 50,
            height: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Theme.of(context).colorScheme.secondary,
              child: const Icon(
                FontAwesomeIcons.circleInfo,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Text(
          'Informacje',
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 9.0),
        ),
      ],
    );
  }
}
