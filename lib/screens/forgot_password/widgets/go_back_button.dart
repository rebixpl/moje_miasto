import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/login/login_screen.dart';

class GoBackButton extends StatelessWidget {
  final bool clearNavHistory;
  final Widget? widgetToNavAfterClear;

  const GoBackButton({
    super.key,
    this.clearNavHistory = false,
    this.widgetToNavAfterClear,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // TODO: Nawiguj jeden ekran do tyłu
      onTap: () => clearNavHistory
          ? Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => widgetToNavAfterClear ?? LoginScreen(),
              ),
              (route) => false,
            )
          : Navigator.pop(context),
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
