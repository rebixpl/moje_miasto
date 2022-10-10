import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationsButton extends StatelessWidget {
  const InformationsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => debugPrint("navigate to about screen"),
          child: SizedBox(
            width: 60,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Theme.of(context).colorScheme.secondary,
              child: const Icon(
                FontAwesomeIcons.circleInfo,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Text(
          "Informacje",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
