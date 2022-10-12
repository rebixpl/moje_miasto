import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class PersonCard extends StatelessWidget {
  final String imgPath, name;
  const PersonCard({
    Key? key,
    required this.imgPath,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200.0,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          name.titleCase,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontFamily: 'Montserrat',
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
        ),
      ],
    );
  }
}
