import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/widgets/show_thank_you_snackbar.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class VoteButton extends StatelessWidget {
  const VoteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showThankYouSnackbar(context);
      },
      color: AppTheme.kAccentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: _voteText(),
    );
  }

  Text _voteText() {
    return Text(
      'zagłosuj'.allInCaps,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12.0,
      ),
    );
  }
}
