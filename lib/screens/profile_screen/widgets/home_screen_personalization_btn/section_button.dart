import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: const Color(0xff211A4C).withOpacity(0.07),
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 24.0,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: centerText(
                    context: context,
                    text: label,
                  ),
                ),
              ),
              Icon(
                FontAwesomeIcons.chevronRight,
                size: 16.0,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text centerText({
    required BuildContext context,
    required String text,
  }) {
    return Text(
      text.titleCase,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.bold,
        fontSize: 15.0,
      ),
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }
}
