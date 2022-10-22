import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/widgets/help_type_picker/widgets/single_entry_texts.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class HelpInfo extends StatelessWidget {
  const HelpInfo({
    Key? key,
    required this.userEmail,
  }) : super(key: key);

  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        usernameText('kontakt'.titleCase),
        const SizedBox(height: 10.0),
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.solidEnvelope,
              color: Colors.white,
            ),
            const SizedBox(width: 10.0),
            usernameText(
              userEmail,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
      ],
    );
  }
}
