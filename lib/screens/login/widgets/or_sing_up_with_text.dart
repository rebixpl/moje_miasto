import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/thin_divider.dart';

class OrSIgnUpWithText extends StatelessWidget {
  const OrSIgnUpWithText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ThinDivider(),
        const SizedBox(width: 6.0),
        Text(
          'Lub zaloguj się przez',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
          ),
        ),
        const SizedBox(width: 6.0),
        const ThinDivider(),
      ],
    );
  }
}
